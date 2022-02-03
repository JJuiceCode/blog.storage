---
title: "HTML 텍스트 줄바꿈을 단어 기준으로 정하게 만들어 주는 CSS 속성 | break-word"
author: "JJuice"
images: ["/images/thumb/2022/thumb-study_css_wordbreak.png"]
tags: [break-word,css속성]
categories: [css]
date: 2022-02-03T14:55:22+09:00
draft: false

---




# 시작하기에 앞서

HTML 홈페이지의 컨텐츠를 만들다 보면 `<p>` 태그에 블락 영역 단위로 아래와 같이 '한글or영어' 텍스트 내용을 입력하게 된다.

```html
<p class="mt-8 text-lg">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    Aenean   necmollisnulla.Phase lluslacinia tempusmauriseulaoreet.
    Proin gravida velit dictum dui consequat malesuada.
</p>
<p class="mt-8 text-lg">
    하이엔드 스피커의 대명사인 FOCAL(포컬)은 1972년 설립되어 지금까지 홈오디오는 물론,
	카오디오와 프로페셔널 오디오까지 다양한 라인업으로 유럽에서는 60%의 절대적인 시장
	점유율을 기록하고 있습니다.
</p>
```

특별한 CSS 속성값을 부여해주지 않으면 아래의 이미지같이 렌더링되어 텍스트가 출력된다.

![image-20220203113606947](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203113606947.png)

![image-20220203113938066](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203113938066.png)

상황에 따라 다르겠지만 보통 가독성을 높이기 위해서는 단어별로 줄 바꿈을 해주는게 더 좋아보인다.

위와 같은 경우 `word-break` CSS속성을 이용해 단어 기준으로 줄 바꿈을 할지 OR 글자 기준으로 줄 바꿈을 할지 설정이 가능하다. 그 방법에 대해서 알아보자.







**※ 제대로 짚고 넘어가기**

- 보통 HTML에서 사용되는 다양한 언어를 2가지 타입으로 나뉜다.
  - 중국어/일본어/한글 : **CJK**
  - 그 외 언어 숫자/영어등 : **non-CJK**
- 보통 글자들을 나누는 중단점 `.` 이 존재하는데 이 2가지 언어 타입은 중단점`.` 의 기준이 다르다.
  - CJK 중단점 기준 : 음절
  - non-CJK 중단점 기준 : 공백(띄어쓰기, 하이픈`-`)
- 아래의 예제를 보며 이해해보자.

▶ 언어 타입에 따른 중단점`.`  위치 살펴보기

```bash
[한글,영어 단어 예제]
저는 한글입니다
and english language
```

``` 
[기본 중단점 한글→음절 / 영어→공백]
저·는·한·글·입·니·다
and·english·language
```

- 위처럼 한글과 영어의 중단점`.` 의 위치를 정확히 짚고 다음단계로 넘어가도록 하자.



## word-break 속성 알아보기

### `word-break` 무엇에 쓰는 물건인고?

└ 줄바꿈을 할 때 단어 기준으로 할 지 or 글자 기준으로 할지 정하는 CSS 속성입니다.

- 더 정확히 정의하자면 텍스트가 자신의 컨텐츠 영역(컨테이너 박스)밖으로 oveflow할때(벗어날때) <u>줄을 어떻게 바꿀 지</u> 지정해주는 CSS 속성입니다.

  >  '줄을 어떻게 바꿀 지' 이 부분은 **※ 제대로 짚고 넘어가기** 기준으로 다시 해석하자면
  >
  >  ​	→ CJK or non CJK 텍스트의 중단점`.` 을 어떤 기준을 정해줄지 라고 해석할 수 있을거 같다.



###  `word-break` 속성값 알아보기

```
word-break : normal | break-all | keep-all | initial | inherit;
```

- `initial:기본값` 으로 설정 & `inherit 부모 요소의 속성값을 상속` → 이 2가지의 속성값에 대해서는 다른 설명을 추가하지 않겠습니다.

▶`normal`  : CJK & non CJK 둘 다 기본 중단점`.`  기준으로 줄바꿈을 설정한다.

```
[한글,영어 단어 예제 → word-break:normal 적용]
저·는·한·글·입·니·다
and·english·language
```

실제 예제 출력 결과물을 살펴보자.

![image-20220203141353080](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203141353080.png)



> 똑같이 적용된 `word-break: normal;` 이지만  **※제대로 짚고 넘어가기**에서 처럼 영어와 한글의 중단점`.` 의 기준이 다르게 때문에  결과값이 다르다는 걸 꼭 인식해야 합니다.



▶ `break-all` : CJK & non CJK 둘 다 중단점의 기준점을 '음절'로 둔다.

```
[한글,영어 단어 예제 → word-break:break-all 적용]
저·는·한·글·입·니·다
a·n·d·e·n·g·l·i·s·h·l·a·n·g·u·a·g·e
```

실제 예제 출력 결과물을 살펴보자.

![image-20220203132327207](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203132327207.png)

> `word-break:break-all` 적용된 후의 출력된 값입니다. 한글 같은 경우 원래의 중단점`.` 기준이 **음절**이였기 `word-break: normal`과 다른게 없지만 영어 같은 경우 원래의 중단점`.` 기준 **공백** 이였기 때문에 기존의 `word-break: normal` 과 전혀 다른 결과물을 보여줍니다.



▶ `keep-all` : CJK & non CJK 둘 다 중단점의 기준점을 '공백'로 둔다.

- 여기서 공백에 하이픈`-` 도 포함이 된다.

```
[한글,영어 단어 예제 → word-break:keep-all 적용]
저는·한글·입니다
and·english·language
```

실제 예제 출력 결과물을 살펴보자.

![image-20220203144939239](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203144939239.png)



## 결론

제목처럼 "HTML 텍스트 줄바꿈을 단어 기준으로 정하게 만들어 주는 CSS 속성"을 적용시켜주려면 아래와 같이 해당 HTML 요소에 `word-break:keep-all`  CSS 속성값을  적용시켜주면 된다.

```html
<p class="mt-8 text-lg keep-all">
	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean necmollisnulla.
	Phase lluslacinia tempusmauriseulaoreet.Proin gravida velit dictum dui consequat malesuada.
</p>
<p class="mt-8 text-lg keep-all">
	하이엔드 스피커의 대명사인 FOCAL(포컬)은 1972년 설립되어 지금까지 홈오디오는 물론,
	카오디오와 프로페셔널 오디오까지 다양한 라인업으로 유럽에서는 60%의 절대적인 시장
	점유율을 기록하고 있습니다.
</p>
```

```css
.keep-all {
    word-break: keep-all;
}
```

![image-20220203144720941](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220203144720941.png)



# 마무리하며..

처음에는 관련된 자료를 찾아보고 `word-break` 속성값의 기준은 '글자 기준' or '단어 기준' 인 줄 알았는게 그게 아니였다. 언어별로 나뉘는 중단점`.` 의 기준으로 나뉘는 것이였다는 것을 이번에 처음으로 알게 되었다.

홈페이지 컨텐츠를 만들어가며 시간에 쫓긴다는 핑계로 단어별 줄바꿈도 제대로 적용을 해주지 않았다는 것에 반성을 해보기도 했다. (ㅠㅠ 어려운 것도 아닌데..)

작은 디테일이 쌓이고 쌓여 멋진 결과물이 나오게 된다. 시간이 조금 더 걸리더라도 조금 더 귀찮아 지더라도 작은 디테일을 놓치지 않도록 노력하자!!

> 간단한 컨텐츠들을 대부분 [tailwindcss](https://tailwindcss.com/)를 이용해 CSS 스타일을 적용하는데, 왜 tailwindcss에는 `word-break: keep-all` 을 적용시키는 속성값이 없는 것이냐!! 한글 무시하는건가~ ( tailwindcss 에서 비슷하게 사용할 수 있는 속성이 `break-words` → `overflow-wrap: break-word;` 인데 영어에는 적용되지만 한글에는 적용되지 않는다. )

