# Kaggle로 ML 배우기 (0)

<img width="903" height="641" alt="image" src="https://storage.googleapis.com/kaggle-media/random/landing_page_post.gif" />

kaggle.com/learn 강좌를 통해 ML의 기초지식을 학습하고, 예시 문제를 해결하는 과정에서 얻게 된 통찰을 공유하는 것을 목표로 한다.

유형: ① 신규 아이템 계획 - 새롭게 시작하고자 하는 기술 업그레이드 아이템

### 🔍 Background (배경)

- 머신러닝 기술 사용이 장려되는 것으로 보인다.

    - 고등학교 해커톤
    - 대학교: 3 과기원 합동 '데이터 사이언스 경진대회'
    - 회사: AI 경진대회
- 최근 AI/데이터 활용 사례는 증가하고 있으나, 정형 데이터 문제를 직접 모델링하고 검증해본 경험은 부족했다.
- Kaggle 교육 과정과 연습 대회를 통해 ML을 활용한 **실험 기반 문제 해결 경험**을 쌓고자 한다.

ML 실력이 늘수록 생활 속에서 활용가능한 분야가 많아질 것으로 보인다.

    - 추천 시스템 (youtube 추천 algorithm, 웹 검색엔진 랭킹 정렬, coupang/amazon 상품 추천)
    - 손글씨 데이터로 실제 text 예측하기 (MNIST dataset)
    - 사용자 세그먼트 자동 분리 (마케팅)
    - 자동 주식 매매 봇

<!-- - 기존 업데이 발표를 볼 때 직원들이 LLM Agent나 RAG 등을 DSL 번역기, 설정 관리 챗봇, Frontend QA 등 다양한 분야에 유용하게 활용했다. -->

<!-- * **ML과 LLM의 분리:** LLM이 만능처럼 보이지만, 수치형/정형 데이터 기반의 의사결정 문제는 여전히 전통적인 ML(Scikit-learn, XGBoost 등)이 훨씬 강력하고 효율적이다.
* **기술 혼동 방지:** 연구소 내에서 "모든 문제에 LLM을 붙이면 해결되겠지"라는 오해를 바로잡고, 문제의 본질에 따라 기술 스택을 결정하는 가이드를 제시하고자 한다. -->

### 🎯 What (무엇을?)

~~Kaggle 기반 실습을 통해 ML 실험 설계 및 검증 과정을 정리하고 문서화한다.~~

Kaggle의 'Learn' 페이지를 통한 ML 학습 (및 그 과정에서 '연습 대회' 참가)

- Intro to ML (마지막에 US 집값 예측 연습대회 존재)
- Pandas
- Intermediate ML (US 집값 예측 연습대회를 거의 매 차시마다 exercise로 나감)
- Feature Engineering (위의 대회에서 사용한 모델의 정확도를 끌어올릴 수 있음.)
- ML Explainability

각 목차별로 두 가지, 'course', 'exercise'로 나뉜다.

'course'에는 배우는 내용에 대한 'Kaggle Notebook'이 존재한다.

'exercise'에서는 배웠던 내용 중 ML을 위해 필요한 코드를 직접 짜게 하거나 생각해볼 만한 문제에 답변을 적게 한다. 또한 코드의 경우 '채점'이 되기에 모든 코드가 의도된 대로 실행되어야 한 exercise 완료처리를 받을 수 있다.

### 💡 Why (왜?)

ML(머신러닝) 기술을 적용해보며 모델 선택, 데이터 품질, 평가 기준 등 현실적인 활용 판단 능력을 기르기 위함. 또한 문제를 풀면서 얻게 된 유용한 통찰과 시행착오를 정리해두고 공유함으로서 나 뿐만 아니라 청중들이 업무 중 발생하는 유사한 문제 상황에서 적용할 수 있게 하기 위함.

### 🏁 Goal (목표)

* **ML 파트:** Tabular 데이터 기반 'Getting Started' 대회 상위 20% 수준의 성능 도달.
* 문제 해결 과정 및 실험 흐름을 정리한 Kaggle Notebook 작성
* 실무 적용 가능한 통찰 및 시행착오 정리

해당 목표는 진행 상황에 따라 변동될 수 있다.

### Status / Plan

#### Status (현 상황)

강의: 다음 세 강의를 수강함.

- Intro to ML (마지막에 US 집값 예측 연습대회 존재) (7/7)
- Pandas (6/6)
- Intermediate ML (US 집값 예측 연습대회를 거의 매 차시마다 exercise로 나감) (7/7)

(https://www.kaggle.com/competitions/home-data-for-ml-course/leaderboard)

1351 / 4645 (약 상위 29%)

점수: \$ 16508.80041 (MAE : Mean Average Error. 낮을수록 좋음.)

(추후 정리 예정)

<!-- #### Plan (예전 버전)

남은 2026년 1분기 (1-3월) 동안 (9일간) 다음과 같은 작업을 할 계획이다.

1/30, 2/6, 2/13, 2/20, 2/27, 3/6, 13, 20, 27

1. pilot - 데이터 처리와 머신러닝 학습: 2주

(ChatGPT 피셜: 약 2주간):
- Take Python → Intro to ML courses.
- Explore one dataset and make a clean EDA notebook.
- Enter a "Getting Started competition (e.g., Titanic)".
- Read 1–2 high-scoring public notebooks and improve yours.

2. ML 문제 풀어보고 공개 고점 노트북 보고 insight 정리 - 2주간 반복학습/정리
3. LLM 활용법 pilot 실습하기: ~1주
4. LLM 활용 문제 풀어보고 모범답안 보고 insight 정리: 2주
5. 전체 insight 정리: 2주

2026년 1분기 (1/30 ~ 3/27, 매주 금요일 집중)

| 주차 | 단계 | 주요 활동 내용 |
| --- | --- | --- |
| **1~2주** | **ML 기초 & 정형 데이터** | Titanic 또는 House Prices 대회 참여. EDA와 특성 공학(Feature Engineering) 학습. |
| **3~4주** | **ML 고도화 & 검증** | XGBoost, LightGBM 등 트리 모델 활용. 교차 검증(CV) 및 하이퍼파라미터 튜닝 최적화. |
| **5주** | **LLM Pilot (NLP 기초)** | NLP Getting Started(Disaster Tweets 등) 참여. 전통적 NLP vs LLM 접근법 비교. |
| **6~7주** | **LLM 활용 문제 해결** | Kaggle 내 LLM 관련 대회(Prompt Recovery 등) 참여. 프롬프트 기법 및 활용 전략 정리. |
| **8~9주** | **통합 Insight 정리** | **"ML vs LLM 결정 트리"** 제작. 문제 유형별 최적의 기술 스택 가이드라인 문서화 및 발표 준비. | -->

### Additional Contents

- ChatGPT Suggestion (https://chatgpt.com/share/6972f5c3-2544-8000-ae72-fa49d610cf4b)
- 260227 ChatGPT Feedback? (https://chatgpt.com/share/69a145ba-ad30-8000-bd3c-77946bb28444)

