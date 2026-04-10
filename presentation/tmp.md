## Key Takeaways

여러분은 이 발표를 통해 다음을 얻어가실 수 있을 겁니다.

1. 개발과정에도 적용가능한 통찰
2. ML으로 통찰을 얻고 직관력을 키우는 방법
3. 이런 ML을 노베이스부터 시작하는 방법

## Why ML?

사람은 살다보면 완벽한 정답이 없는 문제를 마주하게 되는 경우가 있음

- 누구랑 결혼할까
- 주식을 어떤 시점에 어디에 얼마나 투자해야 하는가
- 이 사진은 B일까 13일까

공통점: 규칙을 직접 찾거나 만들기 매우 어려움.

(→ 여기서 pause)

ML은 이런 상황에서

"규칙을 우리가 만드는 대신, 데이터로부터 찾아내는 방식"입니다.

<!-- (point 명료화, 반복 설명 필요) -->

예를 들어 다음과 같은 data point가 있다고 가정합시다.

~~(functional approximation figure)~~

이런 data point에서는 규칙이 아주 쉽게 찾아집니다. 단순히 linear regression이라는 수학적 기술만으로도 데이터에서 보이는 규칙을 찾을 수 있지요.

그러나 이런 data point를 보면 아무런 규칙을 찾을 수 없습니다! (좀 좋은? 2/3?차원 example?)

ML은 이런 상황에서 데이터만 보고 규칙을 찾아줍니다. (3차원이면 e.g. x,z 에만 집중하면 규칙이 보이도록 ㅇㅇ, rotate / projection한 것을 보여준다. 아마 supervised learning이라면 (x,y) 로 z 예측하기 이런게 되겠군.)

- 딸깍하면 근사치가 튀어나오는 것이죠! 물론 어떤 접근 방식으로 근사할지는 사용자가 정해야겠지만요.

~~ML은 비결정론적 ??~~

~~ML은 ~를 해결해준다.~~

## Experiences

“이런 실험들을 해봤습니다”

missing data
categorical

이 중 2가지 경험을 여러분께 소개드리겠습니다. (내 경험을 설명하기 위해 필요한 개념이 있으면 1~2문장정도만 추가하기로 한다.)

- missing data handling을 사용한 것. (=> 시행착오 경험 얘기)



- categorical-variables + 어떤 실험을 했는가 (예상치 못한 방향으로 프로그램이 실행된 case)





## Insights

missing data handling에서 얻은 insight?

이외에 많은것들 (?)

(## Final - 어케 맘대로 하기 ㅇㅇ)


get help from: https://chatgpt.com/c/69cf52f1-3584-83a7-957a-1f440e271302



💡 Insight 1
👉 “데이터 처리만으로 성능이 크게 바뀐다”
모델보다 데이터가 중요
preprocessing이 핵심

👉 Experience 1에서 자연스럽게 연결

💡 Insight 2
👉 “직관보다 실험 결과를 믿어야 한다”
사람이 중요하다고 생각한 feature ≠ 실제로 중요한 feature
ML은 감이 아니라 검증

👉 Experience 2에서 연결

💡 Insight 3 (이거 넣으면 발표 완성됨)
👉 “ML은 모델링이 아니라 실험 과정이다”
여러 시도를 비교해야 함
결과로 판단해야 함

👉 전체를 묶는 메타 insight

...하 모르겠다



https://chatgpt.com/share/69d8ab1f-1014-83a2-9f71-80ec378b7f2c

저거 보고 continue하도록 하자.

