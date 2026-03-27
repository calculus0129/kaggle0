## Data Leakage

Find and fix this problem that ruins your model in subtle ways.

**Data leakage** (**leakage**): Happens when the training data contains information about the target, but similar data will not be available when the model is used for prediction. This leads to high performance on the training set (and possibly even the validation data), but the model will perform poorly in production. In other words, leakage causes a model to *look* accurate until you start making decisions with the model, and then the model becomes very inaccurate.


There are two main types of leakage: **target leakage** and **train-test contamination**.

### Target Leakage

**Target leakage**: *the use of information during model training that would not be available at prediction time* (https://en.wikipedia.org/wiki/Leakage_(machine_learning))

- e.g., features derived from the **future outcomes** are a typical form of such leakage (if using only the past data, then it's NOT a target leakage although it seems dangerous.)

It's important to think about the target leakage in terms of the *timing* or *chronological* order that data becomes available, not merely whether a feature helps make good predictions.

~~Example: Imagine you want to predict who will get sick with pneumonia.~~ (Seems like this is NOT an intuitive example for me)

To prevent this type of data leakage, **any variable updated (or created) after the target value is realized should be excluded**.

### Train-test Contamination

**train-test contamination**: *the case where validation data influences (including indirectly) the model pre-validation training*

A different type of leak occurs when you aren't careful to distinguish training data from validation data.

Recall that validation is meant to be a measure of how the model does on data that it hasn't considered before. You can corrupt this process in subtle ways if the *validation data affects the preprocessing behavior*. This is sometimes called **train-test contamination**.

In my term, I'd say *the case where validation data get involved into model pre-training before validation*.

Example: Run preprocessing (like fitting an imputer) before calling `train_test_split()`

#### Deeper: Why not use the WHOLE (train + validation + test) statics on X for training?

It is true that the 'WHOLE X' (train + validation + test X) is likely to have similar statistics to the population than merely train X's statistics. (by LLN?)

But we STILL don't use these value for training.

1. The validation-scores are MEANT to measure its ability on unseen data to select the final model. This philosophy inhibits this behavior if we think analogously: We can't (may be possible, but very likely won't) fill in the train data again given previously unseen X data. (and train all the model again and then predict) This clearly explains why NO validation data must get into the process of making a 'sample model' for 'validation-scoring' (vis. **BY DESIGN**)

2. The Transformation Drift: If you fit your imputer on the "Whole X" for production, but your training-time imputer was only fit on "Train X," the inputs to your model have technically changed. This explains merely that [if you do NOT use validation or test X data to train the model, then it is good to use only the given test+validation X]

https://gemini.google.com/share/ff52ff94496f

https://gemini.google.com/share/3e1b7f37affa

### Example: Targer Leakage

Problem

- Input: credit card application dataset
- Output: acceptance (T/F) of any given credit card application

Number of rows in the dataset: 1319

|reports |	age |	income |	share |	expenditure |	owner |	selfemp |	dependents |	months |	majorcards |	active|
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0 |	0 |	37.66667 |	4.5200 |	0.033270 |	124.983300 |	True |	False |	3 |	54 |	1 |	12|
| 1 |	0 |	33.25000 |	2.4200 |	0.005217 |	9.854167 |	False |	False |	3 |	34 |	1 |	13|
| 2 |	0 |	33.66667 |	4.5000 |	0.004156 |	15.000000 |	True |	False |	4 |	58 |	1 |	5|
| 3 |	0 |	30.50000 |	2.5400 |	0.065214 |	137.869200 |	False |	False |	0 |	25 |	1 |	7|
| 4 |	0 |	32.16667 |	9.7867 |	0.067051 |	546.503300 |	True |	False |	2 |	64 |	1 |	5|

Since this is a small dataset, we will use cross-validation to ensure accurate measures of model quality.

```py3
from sklearn.pipeline import make_pipeline
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import cross_val_score

# Since there is no preprocessing, we don't need a pipeline (used anyway as best practice!)
my_pipeline = make_pipeline(RandomForestClassifier(n_estimators=100))
cv_scores = cross_val_score(my_pipeline, X, y, 
                            cv=5,
                            scoring='accuracy')

# Cross-validation accuracy: 0.981052
print("Cross-validation accuracy: %f" % cv_scores.mean())
```

With experience, you'll find that it's very rare to find models that are accurate 98% of the time. It happens, but it's uncommon enough that we should inspect the data more closely for target leakage.

Here is a summary of the data, which you can also find under the data tab:

- `card`: 1 if credit card application accepted, 0 if not
- `reports`: Number of major derogatory reports
- `age`: Age n years plus twelfths of a year
- `income`: Yearly income (divided by 10,000)
- `share`: Ratio of monthly credit card expenditure to yearly income
- `expenditure`: Average monthly credit card expenditure
- `owner`: 1 if owns home, 0 if rents
- `selfempl`: 1 if self-employed, 0 if not
- `dependents`: 1 + number of dependents
- `months`: Months living at current address
- `majorcards`: Number of major credit cards held
- `active`: Number of active credit accounts

A few variables look **suspicious**. For example, does `expenditure` mean expenditure on *this card* or on *cards used before applying*?

At this point, **basic data comparisons** can be very helpful:

```py3
expenditures_cardholders = X.expenditure[y]
expenditures_noncardholders = X.expenditure[~y]

print('Fraction of those who did not receive a card and had no expenditures: %.2f' \
      %((expenditures_noncardholders == 0).mean()))
print('Fraction of those who received a card and had no expenditures: %.2f' \
      %(( expenditures_cardholders == 0).mean()))
```

```
Fraction of those who did not receive a card and had no expenditures: 1.00
Fraction of those who received a card and had no expenditures: 0.02
```

"Fraction of those who did not receive a card and had no expenditures: 1.00" implies that the `expenditure` could be the expenditure of using **this** credit card.

It's not surprising that our model appeared to have a high accuracy. But this also seems to be a case of target leakage, where expenditures probably means *expenditures on the card they applied for*.

Hence we should exclude some of the columns from the features.

Since `share` is partially determined by expenditure, it should be excluded too. The variables `active` and `majorcards` are a little less clear, but from the description, they sound concerning. In most situations, it's better to be safe than sorry if you can't track down the people who created the data to find out more.

```py3
# Drop leaky predictors from dataset
potential_leaks = ['expenditure', 'share', 'active', 'majorcards']
X2 = X.drop(potential_leaks, axis=1)

# Evaluate the model with leaky predictors removed
cv_scores = cross_val_score(my_pipeline, X2, y, 
                            cv=5,
                            scoring='accuracy')

# Cross-val accuracy: 0.830919
print("Cross-val accuracy: %f" % cv_scores.mean())
```

This accuracy is quite a bit lower, which might be disappointing. However, we can expect it to be right about 80% of the time when used on new applications, whereas the leaky model would likely do much worse than that (in spite of its higher apparent score in cross-validation).

### Conclusion

Data leakage can be **multi-million dollar mistake** in many data science applications. Careful *separation of training and validation data* can prevent `train-test contaminations`, and pipelines can help implement this separation. Likewise, a **combination of caution**, **common sense**, and **data exploration** can help identify `target leakage`.


문제를 풀어보면서 이런 상황들을 익혔다. (4/5문제들)

오늘 원래 마지막 남은 이 한 강의 빠르게 끝내고 했던 것을 review하고 정리하는 시간을 가지려고 했는데

음... 생각보다 생각할것도 많고, 뭔가 개념을 잡기 어려웠던 것 같다.

그래도 이러한 leakage 요소를 고려해서 leakage-free하게 ML을 진행해야겠다는 것을 알 수 있었다.

이제 이걸 어케 정리한댜... 흠...

모르겠다 흠..

AI: https://sites.google.com/view/2026-study-jams/h1-study-jam 이거 한번 해보고 review 해봐도 좋을 것 같다.

