## Pipelines

pipelines are a simple way to keep your data preprocessing and modeling code organized. Specifically, a pipeline bundles preprocessing and modeling steps so you can use the whole bundle as if it were a single step.

Many data scientists hack together without pipelines, but they have some important benefits including

1. Cleaner Code: Accounting for data at each step of preprocessing can get messy. (ppl => X need to manually keep track of your training and validation data at each step.)
2. Fewer Bugs: Fewer opportunities to misapply a step or forget a preprocessing step
3. Easier to Productionize: prototype => deployable model could be hard. ppl. Could help
4. More Options for Model Validation: cross-validation

### Full Pipeline e.g.

#### Step 1. Define Preprocessing Steps

`ColumnTransformer` class bundles together different preprocessing steps. The code below:

- imputes missing values in **numerical** data
- imputes missing values and applies a one-hot encoding to **categorical** data.

```py3
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import OneHotEncoder

# Preprocessing for numerical data
numerical_transformer = SimpleImputer(strategy='constant')

# Preprocessing for categorical data
categorical_transformer = Pipeline(steps=[
    ('imputer', SimpleImputer(strategy='most_frequent')),
    ('onehot', OneHotEncoder(handle_unknown='ignore'))
])

# Bundle preprocessing for numerical and categorical data
preprocessor = ColumnTransformer(
    transformers=[
        ('num', numerical_transformer, numerical_cols),
        ('cat', categorical_transformer, categorical_cols)
    ])
```
#### Step 2. Define the Model

```py3
from sklearn.ensemble import RandomForestRegressor

model = RandomForestRegressor(n_estimators=100, random_state=0)
```

#### Step 3. Create and Evaluate the Pipeline

With the pipeline, we preprocess the training data and fit the model in a single line of code. (In contrast, without a pipeline, we have to do imputation, one-hot encoding, and model training in separate steps. This becomes especially messy if we have to deal with both numerical and categorical variables!)

- With the pipeline, we supply the unprocessed features in `X_valid` to the `predict()` command, and the pipeline *automatically preprocesses* the features before generating predictions. (*However, without a pipeline, we have to remember to preprocess the validation data before making predictions.*)

```py3
from sklearn.metrics import mean_absolute_error

# Bundle preprocessing and modeling code in a pipeline
my_pipeline = Pipeline(steps=[('preprocessor', preprocessor),
                              ('model', model)
                             ])

# Preprocessing of training data, fit model 
my_pipeline.fit(X_train, y_train)

# Preprocessing of validation data, get predictions
preds = my_pipeline.predict(X_valid)

# Evaluate the model
score = mean_absolute_error(y_valid, preds)
print('MAE:', score)
```

MAE: 160679.18917034855

### Conclusion

Pipelines are valuable for cleaning up machine learning code and avoiding errors, and are especially useful for workflows with sophisticated data preprocessing.


이거 하면서...

- SimpleImputer에 `constant` strategy를 쓰는게 `most_frequent`를 쓰는것보다 낫기도 하다는 것을 깨달았다. (직관적으로 일치하는 결과 - `most_frequent`를 채워넣으면 `most_frequent`에 해당하는 row에 대한 데이터의 전체적인 경향성이 본질과 더 달라지고 해당 그 표준편차도 증가할 것이다. 그럴 바에는 domain에 예를 들어 'unknown'이라는 category를 하나 추가해서 빈 값을 그걸로 메우는 것이 나을 것으로 보인다. Numerical은 근데 솔직히 모르겠긴 하다..! mean같은게 나으려나..? 아니면 'constant'해서 'fill_value' 값을 -1로 하나? -1로 하면 그것만 좀 다르게 취급이 잘 되려나? 이에 대한 정보를 Documentation이나 ChatGPT 등에 찾아서 다르게 취급된다고 하면 저게 standard 방법일 것 같고... 안된다면 뭐 mean/mode/most_frequent로 해야지 뭐)



Refer additionally:

- https://scikit-learn.org/stable/modules/generated/sklearn.impute.SimpleImputer.html


```py3
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import OneHotEncoder

# Preprocessing for numerical data
numerical_transformer = SimpleImputer(strategy='constant')

# Preprocessing for categorical data
categorical_transformer = Pipeline(steps=[
    ('imputer', SimpleImputer(strategy='constant')), # 이걸 constant로 ==> "empty_value" 등의 string이 오게 된다.
    ('onehot', OneHotEncoder(handle_unknown='ignore'))
])

# Bundle preprocessing for numerical and categorical data
preprocessor = ColumnTransformer(
    transformers=[
        ('num', numerical_transformer, numerical_cols),
        ('cat', categorical_transformer, categorical_cols)
    ])
```

