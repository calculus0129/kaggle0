## Cross-Validation

### Introduction.

ML is an iterative process.

We often face choices about:

- what predictive variables to use
- what types of models to use
- what arguments to supply to those models, etc.

training data size ==> model quality
validation data size ==> more reliable score

limited. How to cope?

### Concept

In **cross-validation**, we run our modeling process on different subsets of the data to get multiple measures of model quality.

For example, we could begin by dividing the data into 5 pieces, each 20% of the full dataset. In this case, we say that we have broken the data into 5 "**folds**".

[iml coursebook](https://www.kaggle.com/code/alexisbcook/cross-validation)

![some 5-fold image from iml coursebook](IML5_CrossValidation-5-fold.png)

We do this kinda process:

```py3
# folds[5] is given (with size 5)
scores=[]
for i in range(5):
    train_folds = [folds[j] for j in range(5) if j != i]
    scores.append(
        train_and_score(train_data=train_folds, valid_data=folds[i])
    )
avg_score=sum(scores)/5
```

Note that **holdout** set : The fold being used as the *validation data* in each iteration "experiment" of the cross-validation

### Pros and Cons

Pros

- Gives a more accurate measure of model quality (important when we make a lot of modeling decisions.)

Cons

- Takes longer to run (estimates multiple models - one for each fold)

### Use when?

- For *small* datasets: Extra computational burden is not a big deal.
- *larger* datasets: Single validation set is sufficient.

No simple threshold for *large* and *small* dataset,

"but if model running takes 2 minutes or less => **c-v** may be okay."

### Use with pipelines!

**Doing CV *with* pipelines makes the whole job a lot straightforward**

Assume `X` and `y` are given.

```py3
from sklearn.ensemble import RandomForestRegressor
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer

my_pipeline = Pipeline(steps=[('preprocessor', SimpleImputer()),
                              ('model', RandomForestRegressor(n_estimators=50,
                                                              random_state=0))
                             ])
```

We obtain the cross-validation scores with this `[cross_val_score()](https://scikit-learn.org/stable/modules/generated/sklearn.model_selection.cross_val_score.html)` function from scikit-learn.

We set the # of folds with the `cv` parameter.

```py3
from sklearn.model_selection import cross_val_score

# Multiply by -1 since sklearn calculates *negative* MAE
scores = -1 * cross_val_score(my_pipeline, X, y,
                              cv=5,
                              scoring='neg_mean_absolute_error')

print("MAE scores:\n", scores)

print("Average MAE score (across experiments):")
print(scores.mean())
```

```
MAE scores:
 [301628.7893587  303164.4782723  287298.331666   236061.84754543   260383.45111427]

 Average MAE score (across experiments):
277707.3795913405
```

The `scoring` parameter chooses a measure of model quality to report: in this case, we chose negative mean absolute error (MAE). The [docs for scikit-learn](https://scikit-learn.org/stable/modules/model_evaluation.html) show a list of options.

It is a little surprising that we specify *negative* MAE. Scikit-learn has a convention where ++all metrics are defined so a high number is better++. Using negatives here allows them to be consistent with that convention, though negative MAE is almost unheard of elsewhere.

We typically want a single measure of model quality to compare alternative models. So we take the average across experiments.

### Conclusion

Using cross-validation yields a much better measure of model quality, with the added benefit of cleaning up our code: note that we no longer need to keep track of separate training and validation sets. So, especially for *small datasets*, it's a good improvement!

Note: Learn more about [hyperparameter optimization](https://en.wikipedia.org/wiki/Hyperparameter_optimization) starting from **grid search**, which is a straightforward method for determining the best *combination* of parameters for a ML model. Start from sklearn's `GridSearchCV()` to make your grid search code very efficient!

### Insights

확실히.. Pipelines + CV => 적은 양 (1460개였지만) 의 데이터로도 단순한 모델의 score를 reliable하게 얻을 수 있을 것으로 보인다. ==> 채택할 모델을 선정하는 의사결정에서도 꽤 유용할 것이다.

1. 여러 model score를 얻는다.
2. 특정 model을 보기로 한다.
3. ...

그리고 이런 plt로 하는 단순한 visualization도 많이 마음에 들었다.

```py3
def get_score(n_estimators):
    """Return the average MAE over 3 CV folds of random forest model.

    => "3 folds"
    
    Keyword argument:
    n_estimators -- the number of trees in the forest
    """
    global X,y
    # Replace this body with your own code
    pipeline = Pipeline(steps=[
        ('preprocess', SimpleImputer()),
        ('model', RandomForestRegressor(n_estimators, random_state=0))
    ])
    return -cross_val_score(pipeline, X, y, cv=3, scoring='neg_mean_absolute_error').mean()

results = dict((n_estimators, get_score(n_estimators)) for n_estimators in range(50, 450, 50)) # Your code here

import matplotlib.pyplot as plt
%matplotlib inline

plt.plot(list(results.keys()), list(results.values()))
plt.show()
```

