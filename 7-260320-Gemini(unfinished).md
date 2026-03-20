Okay. Your "The Transformation Drift" got me there.

I think that is the key point why we don't use the 'WHOLE X' statistics for testing either.

So to summarize...

It is true that the 'WHOLE X' (train + validation + test X) is likely to have similar statistics to the population than merely train X's statistics. (by LLN?)

But we STILL don't use these value for training.

1. The validation-scores are MEANT to measure its ability on unseen data to select the final model. This philosophy inhibits this behavior if we think analogously: We can't (may be possible, but very likely won't) fill in the train data again given previously unseen X data. (and train all the model again and then predict) This clearly explains why NO validation data must get into the process of making a 'sample model' for 'validation-scoring'

2. The Transformation Drift: If you fit your imputer on the "Whole X" for production, but your training-time imputer was only fit on "Train X," the inputs to your model have technically changed.

Example: If "Train Mean" was 50 and "Whole Mean" is 55, the model was optimized to see "50" as the average. Giving it "55" as the average in production might slightly shift the model's internal logic in an unexpected way. (We may obtain a better model if it is guaranteed that putting in a value closer to population mean makes it perform better, but in VERY MOST CASES, we CANNOT have that guarantee. (SAD, I thought this kinda predicate could hold true if we dig in deeper, but seems like it's not... To think of this, If we have a very delicate and frequently used model, and we 'prove' that re-training it for bigger dataset of X would likely cause the model to perform better, both statistic/mathematically and through experiment, then would it be something worthy of writing a popular thesis?))

--- (just scrap here)

Validation phase to decide the method of obtaining the final model, we apply the method to create a 'sample model' in a sense that would mimic the behavior of the final model. vis. Nevertheless that the validation dataset is more 'biased', it must get good score for any unseen data.