# Kaggle로 ML과 LLM 활용 능력 기르기 (0)

<img width="903" height="641" alt="image" src="https://storage.googleapis.com/kaggle-media/random/landing_page_post.gif" />

Kaggle 대회를 통해 **전통적 ML(예측/분류)**과 **현대적 LLM(이해/생성)**의 차이를 몸소 체험하고, 문제 유형에 따른 최적의 모델 선택 기준을 수립하여 공유하는 것을 목표로 한다.

유형: ① 신규 아이템 계획 - 새롭게 시작하고자 하는 기술 업그레이드 아이템

### 🔍 Background (배경)

- 기존 업데이 발표를 볼 때 직원들이 LLM Agent나 RAG 등을 DSL 번역기, 설정 관리 챗봇, Frontend QA 등 다양한 분야에 유용하게 활용했다.
- LLM과 유사한 머신러닝 기술은 그 활용도가 매우 높다. (실제로 이 회사 뿐 아니라 고등학생때부터도 주변에서 해커톤 대회가 많이 열렸으며, 해결하는 문제는 일상 속에서 활용도가 높기도 함)

* **ML과 LLM의 분리:** LLM이 만능처럼 보이지만, 수치형/정형 데이터 기반의 의사결정 문제는 여전히 전통적인 ML(Scikit-learn, XGBoost 등)이 훨씬 강력하고 효율적이다.
* **기술 혼동 방지:** 연구소 내에서 "모든 문제에 LLM을 붙이면 해결되겠지"라는 오해를 바로잡고, 문제의 본질에 따라 기술 스택을 결정하는 가이드를 제시하고자 한다.

### 🎯 What (무엇을?)

Kaggle 사이트 기반 머신러닝/LLM 문제 해결 학습 및 실험 정리
- Kaggle 공개 데이터/대회를 활용한 문제 해결
- Notebook 기반 실험 및 결과 정리

* **Track A (Traditional ML):** 정형 데이터 기반의 예측 모델링 (Classification/Regression)
* **Track B (LLM/NLP):** 텍스트 데이터 처리 및 LLM 프롬프트 엔지니어링/Fine-tuning

### 💡 Why (왜?)

실제 데이터 문제에 LLM/ML(머신러닝) 기술을 적용해보며 모델 선택, 데이터 품질, 평가 기준 등 현실적인 활용 판단 능력을 기르기 위함. 또한 문제를 풀면서 해결을 위한 사고 및 접근 과정을 정리해두고 공유함으로서 나 뿐만 아니라 청중들이 유사한 문제 상황에서 적용할 수 있을 것.

"실제 데이터 문제에서 **"이 문제는 ML로 풀 것인가, LLM으로 풀 것인가?"**를 판단하는 안목을 기르기 위함이다. 무조건 최신 기술을 쓰는 것이 아니라, 비용 대비 효율이 가장 높은 솔루션을 도출하는 '엔지니어링 사고' 과정을 공유하고자 한다."

### 🏁 Goal (목표)

* **ML 파트:** Tabular 데이터 기반 'Getting Started' 대회 상위 20% 수준의 성능 도달 및 Feature Engineering 노하우 정리.
* **LLM 파트:** NLP 관련 대회(예: 텍스트 분류, 요약, 채점 등) 참여를 통해 LLM의 강점과 한계(Hallucination, 비용 등) 파악.

해당 목표는 진행 상황에 따라 변동될 수 있다.

### Plan (계획)

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
| **8~9주** | **통합 Insight 정리** | **"ML vs LLM 결정 트리"** 제작. 문제 유형별 최적의 기술 스택 가이드라인 문서화 및 발표 준비. |

### Additional Contents

- ChatGPT Suggestion (https://chatgpt.com/share/6972f5c3-2544-8000-ae72-fa49d610cf4b)
