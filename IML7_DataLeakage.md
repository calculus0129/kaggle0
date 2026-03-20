## Data Leakage

Find and fix this problem that ruins your model in subtle ways.

**Data leakage** (**leakage**): Happens when the training data contains information about the target, but similar data will not be available when the model is used for prediction. This leads to high performance on the training set (and possibly even the validation data), but the model will perform poorly in production. In other words, leakage causes a model to look accurate until you start making decisions with the model, and then the model becomes very inaccurate.

There are two main types of leakage: **target leakage** and **train-test contamination**.

### Target Leakage

**Target leakage** occurs when your predictors include data that will not be available at the time you make predictions.

It's important to think about the target leakage in terms of the *timing* or *chronological* order that data becomes available, not merely whether a feature helps make good predictions.

~~Example: Imagine you want to predict who will get sick with pneumonia.~~ (Seems like this is NOT an intuitive example for me)

To prevent this type of data leakage, any variable updated (or created) after the target value is realized should be excluded.

### Train-test Contamination

A different type of leak occurs when you aren't careful to distinguish training data from validation data.

Recall that validation is meant to be a measure of how the model does on data that it hasn't considered before. You can corrupt this process in subtle ways if the *validation data affects the preprocessing behavior*. This is sometimes called **train-test contamination**.

Example: Run preprocessing (like fitting an imputer) before calling train_test_split()

#### Deeper: Why not use the WHOLE (train + validation + test) statics on X for training?

It is true that the 'WHOLE X' (train + validation + test X) is likely to have similar statistics to the population than merely train X's statistics. (by LLN?)

But we STILL don't use these value for training.

1. The validation-scores are MEANT to measure its ability on unseen data to select the final model. This philosophy inhibits this behavior if we think analogously: We can't (may be possible, but very likely won't) fill in the train data again given previously unseen X data. (and train all the model again and then predict) This clearly explains why NO validation data must get into the process of making a 'sample model' for 'validation-scoring' (vis. **BY DESIGN**)

2. The Transformation Drift: If you fit your imputer on the "Whole X" for production, but your training-time imputer was only fit on "Train X," the inputs to your model have technically changed. This explains merely that [if you do NOT use validation or test X data to train the model, then it is good to use only the given test+validation X]

https://gemini.google.com/share/ff52ff94496f

https://gemini.google.com/share/3e1b7f37affa


