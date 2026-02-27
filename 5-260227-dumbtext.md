
kaggle.com/learn 사이트에 나온 강좌를 토대로 ML의 기초지식을 습득하고

# Kaggle로 ML 활용 능력 기르기 (0)

<img width="903" height="641" alt="image" src="https://storage.googleapis.com/kaggle-media/random/landing_page_post.gif" />

kaggle.com/learn 에 나온 강좌들을 수강하고 Kaggle 대회를 나가보면서


문제 유형에 따른 최적의 모델 선택 기준을 수립하여 공유하는 것을 목표로 한다.

유형: ① 신규 아이템 계획 - 새롭게 시작하고자 하는 기술 업그레이드 아이템

### 🔍 Background (배경)

<!-- - 기존 업데이 발표를 볼 때 직원들이 LLM Agent나 RAG 등을 DSL 번역기, 설정 관리 챗봇, Frontend QA 등 다양한 분야에 유용하게 활용했다. -->
- AI 활용
- 머신러닝 기술은 그 활용도가 매우 높다. (회사 뿐 아니라 고등학생때부터 주변에서 해커톤 대회가 많이 열렸으며, 해결하는 문제는 일상 속에서 활용도가 높기도 함)

* **ML과 LLM의 분리:** LLM이 만능처럼 보이지만, 수치형/정형 데이터 기반의 의사결정 문제는 여전히 전통적인 ML(Scikit-learn, XGBoost 등)이 훨씬 강력하고 효율적이다.

### 🎯 What (무엇을?)

Kaggle 사이트 기반 머신러닝/LLM 문제 해결 학습 및 실험 정리

- Kaggle 공개 데이터/대회를 활용한 문제 해결
- Notebook 기반 실험 및 결과 정리

* **Track A (Traditional ML):** 정형 데이터 기반의 예측 모델링 (Classification/Regression)

### 💡 Why (왜?)

실제 데이터 문제에 ML(머신러닝) 기술을 적용해보며 모델 선택, 데이터 품질, 평가 기준 등 현실적인 활용 판단 능력을 기르기 위함. 또한 문제를 풀면서 해결을 위한 사고 및 접근 과정을 정리해두고 공유함으로서 나 뿐만 아니라 청중들이 유사한 문제 상황에서 적용할 수 있을 것.

---

#### 체크포인트 충족 여부

##### ✔ 나 외에 조직에도 도움이 되는가?

* 실험 설계 및 정량 비교 방법 공유 가능
* Domain Knowledge 기반 설계 중요성 사례화 가능
* 향후 데이터 기반 문제 해결로 확장 가능

---

##### ✔ 코드/문서 등 실체적인 결과물이 명확한가?

* Kaggle Notebook
* 실험 정리 문서
* 기술 판단 가이드
* 발표 자료

구체적 결과물 이미지 명확함.

---

##### ✔ 본인의 실력 향상에 실질적 도움이 되는가?

* 단순 강의 수강이 아니라 실제 제출 및 성능 개선 반복 
* Feature Engineering / XGBoost까지 확장 예정
* 복잡한 데이터 문제를 정량적으로 다루는 능력 강화

---

### 🏁 Goal (목표)

* **ML 파트:** Tabular 데이터 기반 'Getting Started' 대회 상위 20% 수준의 성능 도달 및 Feature Engineering 노하우 정리.

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



좋다.
가이드라인 , 기존 계획서 , 그동안의 활동 기록   을 기준으로,
**핵심만 남긴 Upgrade Day 브리핑용 정리본**을 만들어준다.

---

# Upgrade Day 계획 (기존 아이템 확장·심화)

유형: ② 기존 아이템의 확장·심화 계획

---

## 1. 무엇을 (What)

Kaggle 기반 ML 실습을 단순 문제 풀이에서 끝내지 않고,

* 실험 설계 과정 정리
* Feature 선택/제거 기준 정리
* 결측치 처리 전략 비교
* 모델 선택 및 성능 개선 과정 기록
* ML vs LLM 적용 판단 기준 정리

를 문서화한다.

단순 “점수 올리기”가 아니라,

> 복잡한 데이터 문제를 어떻게 사고하고 검증하는지의 과정 정리

를 목표로 한다.

---

## 2. 왜 (Why)

### ① 나 외에 다른 사람/조직에 도움이 되는가?



---

### ② 조직 차원의 가치

* “모든 문제에 LLM을 붙이는 접근”이 아니라
  문제 유형에 따라 ML/LLM을 구분하는 기준 제시 
* 데이터 기반 실험 문화 정착 기여
* Feature 영향 분석 및 실험 기록 템플릿 공유
* 추후 로그 분석 / 이상 탐지 / 예측 문제로 확장 가능한 기반 마련

---

### ③ 본인 역량 향상

기존 활동에서 이미:

* MAE 21000 → 16000 개선 경험 
* Missing Value Handling, Hyperparameter 조정 체험 
* null 비율과 영향도 판단 기준 체감 

이를 통해 다음 능력을 강화하고자 한다:

* Feature Engineering
* Cross Validation
* XGBoost 활용
* 모델 설명력(Explainability) 이해
* 실험 기반 판단력

---

## 3. 목표 결과물 (Deliverables)

### 1️⃣ 실체적 코드 결과물

* Kaggle 제출 Notebook (정형 ML)
* ML 실험 비교 코드 (Baseline vs 개선 모델)
* Hyperparameter 튜닝 실험 정리 코드

---

### 2️⃣ 문서 결과물

* 📄 “ML 실험 사고 정리 문서”

  * null 처리 기준
  * feature 제거 기준
  * domain knowledge 적용 사례
  * baseline 설정 이유
  * 실험 비교 방식

* 📄 “ML vs LLM 적용 판단 가이드”

  * 정형 데이터 → ML
  * 텍스트 생성/이해 → LLM
  * 비용/성능/설명력 비교 기준

* 📊 내부 공유 발표 자료 (요약본)



# 최종 한 줄 요약

이번 Upgrade Day 목표는

> ML 점수를 올리는 것이 아니라,
> 불완전한 데이터 속에서 영향이 큰 변수를 찾아내는 사고를 훈련하고
> 이를 문서화하여 팀과 공유하는 것이다.

---

이건 과장 없고, 추상적이지 않고,
가이드라인  에 정확히 맞는다.

---

원하면,

* 더 짧은 10줄 버전
* 임원 보고용 더 단단한 버전
* 감성 제거 + 더 기술적인 버전

중 하나로 다시 압축해줄까?




- 나 외에 다른 사람(또는 조직)에게도 도움이 되는가?

Yes. 



예시 1:

ML 학습을 통해 데이터 기반 실험 설계 및 성능 비교 역량을 기르고,
이를 팀 내 성능 개선/의사결정 과정에 적용할 수 있는 기반을 마련하고자 함.

예시 2:

단순 모델 개발이 아닌, metric 설정·실험 기록·비교 분석 과정을 정리하여
개발팀 내 “측정 기반 개선 문화” 정착에 기여하고자 함.

예시 3:

향후 로그 분석, 이상 탐지, 성능 회귀 탐지 등으로 확장 가능한
데이터 처리 역량의 초석을 마련하는 것을 목표로 함.



- e.g. '누가 펑크를 냈느냐' 를 탐지가능

