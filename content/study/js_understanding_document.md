---
title: "JS Document 이해하기"
description: "자바스크립트 document객체에 간단히 파헤쳐보기!"
author: "JJuice"
images: ["/images/thumb/2022/thumb_js_understanding_document.jpg"]
tags: [javascript,document]
categories: [study]
date: 2022-02-09T11:30:25+09:00
draft: false

---



# 시작하기에 앞서..

웹과 관련된 JS코드들 중 가장 많이 사용하는 것이 무엇일까 생각해보았다.

개인적으로 생각하기에는 HTML 문서를 JS로 제어하기 위해 `documment` 객체의 다양한 메소드를 이용해 요소(Element)를 가져와서(or DOM 노드에 접근해서) 변수에 할당한 후 다양하게 활용하는 코드들이였다.

아래 코드들이 그 예시이다.

ex.1)

```html
<div id="container">
	<h1>H1 container text</h1>
</div>
```

```js
const cont = document.getElementById("container");
console.log(cont);
```

![image-20220209104644350](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220209104644350.png)



ex.2)

```html
<div class="item">
	<p>This is a item</p>
</div>
```

```js
const item = document.getElementsByClassName("item");
console.log(item);
```

![image-20220209105026271](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220209105026271.png)



위의 예제에서 본 것 처럼 `document` 객체의 `getElementById` 메서드인지 아니면 `getElementsByClassName` 메서드인지 return하는 결과값이 다르다.

`document`객체에는 이처럼 노드 요소에 접근하는 메서드 뿐만 아니라 다양한 메서드들이 존재한다. 문득 `document` 객체는 뭐하는 놈인지 브라우저에서 어떤 역할을 하는지 제대로 이해하고 넘어가고 싶은 생각이 들었다.




## Document 단어적 의미

네이버 영어사전에 `document` 를 쳐보았다.

{{< notice "word" >}}

docu·ment : <명사> 서류,문서 | (컴퓨터의) 문서 (파일)

{{< /notice >}}



## Document 검색 자료 피드백

잠시 관련 자료를 검색한 내용을 살펴보자.

### 1.구글 검색 : MDN Web Docs

가장 첫 번째로 나온 것 검색 결과물은 예상대로 [MDN Web Docs / Document](https://developer.mozilla.org/ko/docs/Web/API/Document) 자료(한글 번역)이다. 아래와 같이 `document` 에 대해 정의되어 있다.

![image-20220215101728946](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220215101728946.png)

{{< notice "info" >}}

Document 인터페이스는 브라우저가 불러온 웹 페이지를 나타내며, 페이지 콘텐츠(DOM트리)의 진입점 역할을 수행 합니다.

{{< /notice >}}



### 2.유튜브 키워드 검색

[What is document interface?](https://www.youtube.com/watch?v=EVNbGVMlANs&t=428s) 유튜브 강좌 영상에 아래와 같이 정의되어 있다. (내 맘대로 번역)

{{< notice "info" >}}
document 객체 or 인터페이스는 웹페이지가 로드되었을때 나타난다.<br/>
만약 HTML 페이지의 엘리먼트(요소)에 접근하려면, 항상 document object에 접근하는걸로 시작한다.<br/>
그래서 인터페이스이다.<br/><br/>
브라우저안의 로드된 모든 웹페이지에 (document 인터페이스가)나타난다.<br/>
그리고 웹페이지 컨텐츠 (정확히는 DOM 트리 위치에)의 진입점(진입할 수 있게 도와주는) 역할을 수행한다.<br/>
일반적으로 (DOM트리는) document 루트 경로를 말하며,기본적인 document data에 접근할 수 있게 지원(제공)한다.
{{< /notice >}}





# 내가 정의해 본 "What is Document ?"

> 자료 결과물을 차분히 읽어본 후 내가 이해한 내용으로 자바스크립트에서 document가 무엇인지 정의해 보았다.


1.브라우저에서 [불러온/로드된] **모든 웹페이지들은 document 인터페이스를 [생성한다 | 가지고 있다].**

2.이 document 인터페이스는 **모든 웹 컨텐츠의 진입점(entry point)=DOM Tree에 [접근할 수 있게]** 도와준다.

3.document가 제공하는 다양한 **document data(Properties & Methods 등)를 사용해 HTML 모든 요소에 접근할 수 있다.**

- document data란? document의 다양한 method와 properties들을 말한다.



```html
<div id="container">
	<h1>H1 container text</h1>
</div>
```

```js
const cont = document.getElementById("container");
console.log(cont);
```

바로 아래와 같은 이유 때문에 우리가 위의 코드를 사용할 수 있는 것이다.

1. 브라우저안 로드된 웹페이지이기 때문에 document 객체(인터페이스)가 존재한다.
2. 그래서 자바스크립트에서 `document` 라고 치면 document의 메서드 `getElementById()` 를 사용해 HTML 엘리먼트 요소에 접근할 수 있는 것이다.



# 마무리 하며..

문득 `console.log` 로 document를 찍으면 무엇이 나오는지 궁금해졌다.

```js
console.log(document);
```

![image-20220215102916022](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220215102916022.png)

위에서 설명한대로 HTML 최상위 root 경로의 인터페이스를 보여준다.

이번 포스트를 통해 어떻게 document가  HTML 요소에 접근하고 왜 접근할 수 있었는지에 대해 조금은 이해하고 넘어갈 수 있게 되었다.

다음에 기회가 되면 document와 연관된 Object Model (객체화)에 대해 이해해 보려고 한다.

