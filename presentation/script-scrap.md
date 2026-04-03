# 

---

---


<!--같은 주제를 여러 번 반복해서 말하기! (전달이 잘 된다, 3회 이상)-->
<!--이야기의 구조를 명확하게 제시!-->
<!--enumerating 등 => know-->
<!--Ask a question (7 sec.)-->


<!--최악의 상황으로 가정 (e.g. disinterested farm animals라고 가정)-->
<!--글씨쓰기 / target--> => 거울신경세포

<!--always too many slides and too many words-->

eye contact, 청중들과 최대한 교감하기

강의를 통해 얻어갈 수 있는 기대를 설정 + 전달하는 데에 있어서 열정을 쏟기.

VISION

- problem
- approach

무엇함?

(꼭 한걸 설명 X도 되고)

본인이 생각하는 실질적인 solution을 제공.

맨 마지막에 Who you are를 밝히기

- 머릿속에 박히는 문구
- 청자들에 대한 나의 생각 with 존경

1. Key Takeaways

여러분은 이 세미나를 통해 ~~를 얻어가실 수 있을 겁니다.

2. Why ML?

사람은 살다보면 정확한 정답이 없는 문제를 마주하게 되는 경우가 있음

- 누구랑 결혼할까
- 주식을 어떤 시점에 어디에 얼마나 투자해야 하는가
- 이 사진은 B일까 13일까

ML은 결정론적



## Key Takeaways

- ML이란 것이 무엇이고, 어디에 쓸 수 있는지를 알아보는 것.
- ML로 
- 학습 과정에서 얻을 수 있는 통찰들이 무엇인지 알 수 있다.
- Kaggle을 통해 어떤 사고력이 길러지는지 알 수 있다.
- 이 사고 방식이 개발 업무에도 어떻게 그대로 적용되는지 알 수 있습니다. (?)

==> 필요에 따라 활용해보면서 ML 능력 뿐 아니라 개발할 때도 써먹을 만한 팁과 교훈을 얻어가시기를.

## Why ML?

기존 업데이 발표를 볼 때 직원들이 LLM Agent나 RAG 등을 DSL 번역기, 설정 관리 챗봇, Frontend QA 등 다양한 분야에 유용하게 활용했다.
- LLM과 유사한 머신러닝 기술은 그 활용도가 매우 높다. (실제로 이 회사 뿐 아니라 고등학생때부터도 주변에서 해커톤 대회가 많이 열렸으며, 해결하는 문제는 일상 속에서 활용도가 높기도 함)

- 머신러닝 기술 사용이 장려되는 것으로 보인다.

    - 고등학교 해커톤
    - 대학교: 3 과기원 합동 '데이터 사이언스 경진대회'
    - 회사: AI 경진대회

"우리가 문제를 풀 때, 항상 정답을 알고 있나요?"
(잠깐 pause)

ML은 이런 상황에서
"정답을 직접 만들지 않고"
데이터로부터 찾아내는 방식입니다.

## ML?

`Tom M. Mitchell`

<!-- > "A computer program is said to **learn** from experience $E$ with respect to some task $T$ and performance measure $P$, if its performance at $T$, as measured by $P$, improves with experience $E$."

| 요소              | 의미                        |
| --------------- | ------------------------- |
| E (Experience)  | 데이터                       |
| T (Task)        | 문제 (예: 분류, 예측)            |
| P (Performance) | 평가 기준 (loss / accuracy 등) |

예시:

- 추천 시스템 (youtube 추천 algorithm, 웹 검색엔진 랭킹 정렬, coupang/amazon 상품 추천)
- 손글씨 데이터로 실제 text 예측하기 (MNIST dataset)
- 사용자 세그먼트 자동 분리 (마케팅)
- 자동 주식 매매 봇 -->

<!-- 우리 개발자들은 기능을 추가할 때 다음 단위의 문제를 풀게 된다.

- 입력: 필요한 입력과 출력에 대한 관계
- 출력: 해당 입력에 대해 해당 출력을 내게 하는 소스코드

ML은 다음과 같은 행위이다.

- 입력: 실존하는 (입력, 출력) 쌍들 그 자체
- 출력: 주어진 입력에서부터 실제 출력에 가까운 출력을 내는 함수 -->

~~개발 vs ML~~

<!-- ML의 예시:

- 수요 / 매출 예측
- 추천 시스템 (유튜브 추천 algorithm, coupang/amazon 상품 추천)
- 이상 탐지 ()
- 검색 랭킹: 
- NLP (텍스트 이해 / 생성): 텍스트에서 감정 파악 등
- classification: 출력값이 유한한 
- regression:  -->

<!-- if (x > 3) return A; else return B;

이렇게 우리는 y=f(x) 에서 f를 정의한다.

ML은 reverse engineering과 같다. (?) -->

## (x,y)로 x -> y 를 예측하는 것: supervised learning

과정

1. 문제 파악
2. 실험 (가설 -> 실험 설계 -> 실험 -> 결과 정리)
3. 
4. 

## Experiences (한 가지 kaggle notebook을 예시로 들어서 사고 과정을 설명해주기.)

- https://www.kaggle.com/code/ryanbhang129/exercise-introduction



## What (무엇을 했는가)

- Intro to Machine Learning
- Pandas
- Intermediate Machine Learning

- https://www.kaggle.com/code/ryanbhang129/exercise-missing-values

## Insights (including that this could give you such insights by ~.)

### 1. 불완전한 정보 속에서도 판단하는 능력

개발에 적용하면?

- "모든 케이스 다 커버 못해도 우선순위 판단 가능" (...!)

흠... 사실 근데 시간 낭비까지라고는 보지 않지만, 한두번 Pilot Testing 용도 이외로 testing을 더 많이 했던 게 좀 있었던 것 같아.

### 2. Domain Knowledge를 아는 것이 정말 중요하다. (음 아마 내가 추후 정리할듯한데 어떤지만 좀 봐줘)

'사용처'?

내가 개발을 무엇을 위해서 하는 것인지를 깊게 알고 있으면 이에 맞춰서 전체적인 개발 방향이나 스키마 설계 등을 진행할 수 있다.

ML에서 ~~ 처럼,

예를 들어, 최근 3571 ? 일감에서 설계 문서에 나와있던

tlp, address_type, ?? 에 대한 domain constraint가 있었다.

이걸 모르고 개발했다면 그런 것을 전혀 고려하지 않았기에 이 속성을 일반 '텍스트 입력'으로 받았을 것이다. 그렇다면 잘 모르는 사람이 실수로 잘못된 데이터를 넣는 경우도 있을 것이고, 그 경우 이를 효율성/편리성을 위해 '선택' FormInput으로 patch해달라는 요청도 들어올 수 있을 것이며, 이런 요청을 해결하기 위해서는 내부 database에 들어가 있는 데이터를 고객사마다 일일이 보고 수정하는 추가적인 migration 작업까지 거쳐야 할 것이다.

하지만 해당 문서를 (모르면 물어보고서라도!) 보고 이해까지 완벽히 했다면 이곳에 domain constraint가 있어야겠다는 생각을 자동적으로 하게 되고, 이런 일을 사전에 방지할 수 있다.

Domain Knowledge + 개발 & 디자인 지식 ==> 완성도 높은 Product

### 3. 모르면 데이터부터 보자

나 또한 설계 문서를 보고 이해가지 않은 부분을 지레짐작해서 schema를 구성하느라 제대로 안하다가 schema를 계속 바꾸느라 개발 예정일정보다 시간이 delay된 경우가 많은 것 같아. '급할수록 돌아가라'라는 말이 있듯이, 설계 문서를 완벽히 이해하는게 중요했던 것 같아.. 일반화가 가능할까 이걸? (#2랑 많이 겹치는 것 같긴 한데..?)

명세 확인 → 직관 → 데이터 검증

### 4. 반복하면 직관이 길러진다 (🧠 중요한 통찰)

이건 핵심이다.

> ML 점수 반복 → 직관 강화

이건 사실:

> 복잡계에서 패턴을 읽는 능력 훈련

이다.

이 능력은:

- 장애 분석
- 성능 병목 추정
- 트래픽 변화 해석
- 사용자 행동 분석

에 그대로 쓰인다.

잘은 모르겠지만 비슷한 맥락에서 개발 중인 / 개발된 프로그램에서 문제가 발생한 원인 파악 능력을 기르는데 유용하지 않을까 싶다.

ML을 통해 직관과 문제해결력을 훈련할 수 있다.
