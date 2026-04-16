<!-- ## Key Takeaways

여러분은 이 발표를 통해 다음을 얻어가실 수 있을 겁니다.

1. 개발과정에도 적용가능한 통찰
2. ML으로 통찰을 얻고 직관력을 키우는 방법
3. 이런 ML을 노베이스부터 시작하는 방법 -->

## Intro

<!-- abstract

- 어떤 활동을 했는지 (아 나름 뜻깊은 과정을 거쳤구나 가 되도록)
- 특정 point 강조를 위해 한번 더 얘기하기 -->

Kaggle 이라는 ML 관련 사이트 => ML 개념을 배우고 exercise 문제를 풀어봄.

특정 강좌 exercise: 미국 집에 주어진 정보 로 그 집의 가격을 예측 하는 문제

이곳에서 missing value 처리 방법에 대해 추가 실험

==> 모델의 성능 끌어올림,

ML으로 직관력을 키우는 방법, 그리고 개발에도 적용가능한 몇 가지 통찰을 얻을 수 있었다.

내가 이런 것을 얻을 수 있었던 경험을 소개.

그 경험으로부터 ML을 하면 무엇이 좋은지 얻어가고,

제가 깨달은 통찰에 대한 간접경험도 얻어가기를 바람.

<!-- "null값 처리에 대한 무언가를 같이 넣어달라" -->

## Why ML?

사람은 살다보면 완벽한 정답이 없는 문제를 마주하게 되는 경우가 있음

- 누구랑 결혼할까
- 주식을 어떤 시점에 어디에 얼마나 투자해야 하는가
- 이 사진은 B일까 13일까

공통점: 규칙을 직접 찾거나 만들기 매우 어려움.

(→ 여기서 pause)

ML은 이렇게 직접 규칙을 찾기 어려운 상황에서

"규칙을 만드는 대신, '모델'에 넣어 학습시켜서 데이터로부터 찾아내는 방식"입니다.

<!-- (point 명료화, 반복 설명 필요) -->

예를 들어 다음과 같은 data point가 있고, 저희는 일차함수만 안다고 가정합시다.

~~(functional approximation figure)~~

이런 data point에서는 규칙이 아주 쉽게 찾아집니다. 단순히 linear regression이라는 수학적 기술만으로도 데이터에서 보이는 규칙을 찾을 수 있지요.

그러나 이런 data point를 보면 그저 단순히 직선만으로는 만족할 만한 규칙 찾기가 어려울 수 있습니다!

ML은 이런 복잡한 상황에서 데이터만 보고 규칙을 찾아주는 기술입니다.

<!-- (다만, 그 정확성은 더 많은 데이터가 주어질수록 일반적으로 증가합니다.) -->

<!-- - 딸깍하면 근사치가 튀어나오는 것이죠! 물론 어떤 접근 방식으로 근사할지는 사용자가 정해야겠지만요. -->

~~ML은 비결정론적 ??~~

~~ML은 ~를 해결해준다.~~

## Kaggle?

- 알고리즘 문제풀기는 백준에서 : ML 문제해결은 Kaggle에서
- ~~ML을 위해서는 데이터셋이 필요한데요,~~ Kaggle에는 ML에 쓰이는 이러한 데이터셋이 공유되고, ML 문제들도 저희가 풀어볼 수 있습니다.
- 기간제로 시도해볼 수 있는 일부 문제에는 심지어는 상금을 부여하기도 하고요, 데이터 활용 경진대회 플랫폼 등으로도 쓰인다고 합니다.
- 저는 이 kaggle에서 kaggle learn => 3가지 course를 들었습니다.

- Intro to Machine Learning
- Pandas
- Intermediate ML

각 course/강의는 6-7개의 lesson으로 구성되어 있고,

각 lesson은 알려주는 것에 대한 정보를 제공하는 Tutorial과 Tutorial에서 배운 지식을 직접 활용해보는 Exercise로 구성이 되어 있습니다.

저는 이 중 제가 제일 인상깊게 수행한 lesson 경험이 어땠는지를 여러분께 공유하고자 합니다.

## Experiences

<!-- “이런 실험들을 해봤습니다” -->

<!-- 해당 강의에서는 빈 값을 어떻게 처리할 것인가에 대한 얘기를 나눕니다. 크게 -->

1. 문제
    1. 큰 문제: https://www.kaggle.com/competitions/home-data-for-ml-course

    <!-- 1. 큰 문제: https://www.kaggle.com/competitions/home-data-for-ml-course
        1. 개요
        다음과 같은 모델을 만드는 것입니다.
        - Input(X): 79 가지 Ames, Iowa 에 있는 거주지에 대한 (거의) 모든 정보
        - Output(y): 해당 집값

        2. 주어진 정보
        - `train.csv` ((X,y) 쌍이 주어짐): 1460개 (1168개 + 292개)
        - `test.csv` (X 만 주어짐): 1459개
        - `data_description.txt` : 데이터에 대한 정보

        3. 요구사항
        - 만든 모델로 test set에 대한 y 값의 예측을 제출.
        - 평가기준: 실제 y값들과의 MSE (mean-squared error)를 따져본다.

    2. 잠정 해결책:
        - 'RandomForestRegressor'라는 모델에 주어진 데이터를 넣고 훈련시키기.
        - `train.csv` 의 약 20%의 행을 'validation data', 나머지 80%의 행을 'train data' 로 간주, train data로 훈련시킨 모델에 대해 validation data로 에러 기대치를 파악.

    3. 지금 해결이 필요한 문제
        - 빈 값이 존재 => 'RandomForestRegressor' 에 넣으면 에러남!
        - 빈 값이 있는 feature
        - 빈 값을 어떻게 해결해야 할까? -->

    1. 큰 문제:
    
    - $X$: 집의 여러 정보 (마당의 넓이, 차고가 지어진 년도 등)
    - $y$: 집값
    
    $(X, y)$ train dataset => 주어진 $X$ 에 대한 집값을 예측하는 모델 만들기.

    <!-- "정답이 있는 데이터로 모델을 학습하고 정답이 없는 데이터에 대해 예측을 제출하는 구조입니다."
    "그리고 예측이 실제 값과 얼마나 차이 나는지를 기준으로 만든 모델을 평가합니다." -->

    2. 내가 해결해야 하는 문제
    
    그런데 데이터에 빈 값이 있음. 빈 값이 있으면 주어진 모델에 학습시키려고 할 때 에러가 발생.

    크게 3가지 빈값이 있었음:

    <!-- Step 1: Preliminary investigation -->

    ```
    (1168, 36)
    LotFrontage    212
    MasVnrArea       6
    GarageYrBlt     58
    dtype: int64
    ```

    ==> 이 빈 값을 어떻게 처리해야 할까!

2. 해결 계획

    1. 강의에서는 ~, ~, ~ 를 사용할 수 있다고 했고,

    크게 3가지: (with figure (?))

    - column drop: 해당 입력을 아예 통째로 빼버리기: 고려하지 않기
    - imputation: 평균값 / 최빈값 / 중앙값으로 다시 채워넣기
    - imputation + 'was-missing': imputation + 해당 값의 존재 여부를 추가로 표시한다.

    2. 내 초기 생각: `MasVnrArea`, `GarageYrBlt` 는 없는 데이터 비율이 5% 미만이므로 impute하기. `LotFrontage` 는 없는 데이터 비율이 약 20%나 되므로 impute해보고 안되면 drop 하기 <!-- '내가 당시 생각하고 행동했던거 하기', ~ 하면 잘 될 것이라 예상함 (기대, 예상) -->

3. 실험

MAE (`MasVnrArea`, `GarageYrBlt`, `LotFrontage` 전부 drop):

: basesline (기준): 17837.82570776256

MAE (`MasVnrArea`, `GarageYrBlt`, `LotFrontage` 전부 impute): 18062.894611872147

MAE (`MasVnrArea`, `GarageYrBlt` impute (평균값), `LotFrontage` drop): 18105.497933789953

MAE (`MasVnrArea`, `LotFrontage` impute (평균값), `GarageYrBlt` drop): 17809.983767123285

4. 결과

MAE (`MasVnrArea`, `LotFrontage` impute (평균값), `GarageYrBlt` drop): 17809.983767123285

<!-- - missing data handling을 사용한 것. (=> 시행착오 경험 얘기) -->

## Insights

get help from: https://chatgpt.com/c/69cf52f1-3584-83a7-957a-1f440e271302

💡 Insight 1
👉 "Domain Knowledge는 매우 Powerful하다."

Domain Knowledge를 깊이 알수록 입력과 출력 데이터 사이에 존재하는 관계를 더 잘 알 수 있다.

<!-- 실제로 개발하면서도 설계 슬라이드에 써진 내용 잘 이해 X, 뭔가 근처 개념이 존재 => 주어진 내용의 의미를 조금씩 파악하고 이해하니 전체적인 그림이 보임 => 요구사항을 맞춰 코딩가능 -->

<!-- 모델보다 데이터가 중요
preprocessing이 핵심 -->

💡 Insight 2
👉 "정보의 필요여부를 선별하는 능력이 중요함"
- `GarageYrBlt` 뺐을때 잘 나옴

(- e.g. 중요도를 Pearson's 상관계수 나 Impurity?라는 정보이론으로 구할 수 있음)

<!-- 사람이 중요하다고 생각한 feature ≠ 실제로 중요한 feature
ML은 감이 아니라 검증 -->

💡 Insight 3 (이거 넣으면 발표 완성됨)
👉 "ML은 직관성을 길러준다."
- 직관성 = 시뮬레이션 능력
- 실제 세계에서 특정 개념들 사이에 연관이 잘 되어있으니 ~~하면 되겠다 하는 시뮬레이션 능력을 더 키울 수 있을 것 같다.
- 성공적으로 ML 점수를 받는 행동을 반복하다 보면 직관성이 길러질 것 같다. 

👉 전체를 묶는 메타 insight

<!-- 이상 ML 학습기를 여러분께 공유드렸는데요, -->

...하 모르겠다



<!-- https://chatgpt.com/share/69d8ab1f-1014-83a2-9f71-80ec378b7f2c

저거 보고 continue하도록 하자. -->