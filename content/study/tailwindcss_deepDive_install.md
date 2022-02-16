---
title: "Tailwindcss Deep Dive.1 | 기본세팅"
description: "taliwindcss 내가 알고 있는 정보를 정리해보기 1탄"
author: "JJuice"
images: ["/images/thumb/2022/thumb_tailwindcss_deepDive1.jpg"]
tags: [tailwindcss, css]
categories: [study]
date: 2022-02-16T13:27:15+09:00
draft: false
---

# 시작하기에 앞서

기존에 항상 tailwindcss 를 사용하려고 `<head>` 에 아래의 CDN `<link>` 코드를 추가해서 사용하고 있다. 회사에서도 고도몰 쇼핑몰 플랫폼을 사용하고 있어서 npm 세팅도 하기 애매하고 (뭔가 딱딱하게 만들어진 플랫폼은 수정이 가능한 부분만 건드는게 좋다.) 코드 한 줄만 넣으면 된다는 편의성도 무시하지는 못하겠다.

사람이 습관의 동물이라고 매 번 쓰던것만 반복해서 쓰게 되고 내가 과연 tailwindcss 에 대해서 얼마나 제대로 알고 있는지 궁금했다. 이왕 쓰는 거 100% 끌어올려 사용해보고 싶다는 욕심이 생겼다.

그래서 다시 처음부터 tailwindcss 시작해보려고 한다. 급하게 페이지를 완성하려고 대충대충 갔다쓰는게 아니라 내가 기존에 쓰지 않던 기능은 무엇이 있는지.. tailwindcss를 활용한 다양한 디자인 패키지를 만들려면 어떻게 해야하는지..

지금부터 시작합니다. tailwindcss Deep Dive!!!

※ 참조자료

- [tailwindcss 공식 사이트](https://tailwindcss.com/)

> 작업 환경은 window os 입니다.



## Get started with Tailwind CSS

공식 문서에 나온 제목 그대로이다. (🙂마크다운 H2 헤더문자는 영어로 써야 멋진 느낌이 든다)



[설치 방법](https://tailwindcss.com/docs/installation)은

1. Tailwind CLI
2. Using PostCSS
3. Frameworkd Guide
4. Play CDN

이렇게 4가지가 종류가 있는데, 일단 첫 번째 **Tailwind CLI** 방법으로 기본 세팅을 해보기로 했다.

### ① 프로젝터 폴더 생성

앞으로 tailwindcss와 관련 된 내용을 적용해보고 결과물을 만들어 낼 폴더를 생성하자.

ex ) 저 같은 경우 `D:\Dropbox\01_Study\FrontEnd\tailwindcss` >  `deepDive` 라는 폴더를 생성하고 프로젝트 폴더로 사용하기로 했다.

![image-20220216103053625](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216103053625.png)

자신이 사용하는 에디터 툴로 해당 폴더를 OPEN하자. (저는 PHPStorm을 사용 중)



### ② 해당 프로젝트 폴더 터미널에서 `npm` & `npx` 명령어 실행

> 기본적이 npm사용하기 위한 세팅법은 [윈도우10에서 NPM을 사용하기 위한 Node.js 설치하는 방법](https://yongku.tistory.com/entry/%EC%9C%88%EB%8F%84%EC%9A%B010Windows-10%EC%97%90%EC%84%9C-NPM%EC%9D%84-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0-%EC%9C%84%ED%95%9C-Nodejs-%EC%84%A4%EC%B9%98%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95) 참조



-`tailwindcss` 설치

```terminal
$npm install -D tailwindcss
```



-`tailwind.config.js` 파일 생성하기

```terminal
$npx tailwindcss init
```

위의 2과정이 문제없이 설치가 됐다면 아래와 같이 비어있는 폴더에 `node_module` `package.json` `tailwind.config.js` 파일이 생성됩니다.

![image-20220216103821847](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216103821847.png)



### ③ `tailwind.config.js` 파일에 tailwindcss적용할 파일 경로 추가하기

기본적으로 아래와 같이 모든 키 값이 비어져 있습니다.

![image-20220216104054544](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216104054544.png)

`content` 속성안에 아래의 코드를 추가하자.

- 저는 `deepDive` 폴더 안 `src` 폴더를 생성한 후 `src` 폴더에 모든 HTML 문서를 생성해 줄 것입니다.

![image-20220216104641262](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216104641262.png)

```js
module.exports = {
    content: [ "./src/**/*.{html,js}" ],
    theme: {
        extend: { },
    },
    plugins: [],
}
```



### ④ src 폴더 안 css파일 생성 후 `@tailwind` 지시자 추가하기

-`src` 폴더에 `tailwind_input.css` 파일 생성

![image-20220216110617665](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216110617665.png)

-`tailwind_input.css` 파일에 `@tailwind` 지시자 코드 추가

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```



### ⑤ 터미널에서 Tailwind CLI 빌드해 주는 명령어 입력하기

여기서 빌드해주는 파일은 바로 위에서 `@tailwind` 지시자 코드가 있는 `tailwind_input.css` 파일을 말한다.

자신이 만든 프로젝트 폴더에 (ex:`deepDive`) 터미널에 다시 들어가 아래의 명령어를 입력해주자.

```terminal
$npx tailwindcss -i ./src/tailwind_input.css -o ./dist/output.css --watch
```

문제가 생기지 않았다면 아래와 같이 `dist/tailwind_output.css` 폴더와 파일이 생성된다.

![image-20220216111832256](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216111832256.png)

그리고 `--watch` 옵션을 추가 되었기 때문에 터미널에서는 css가 추가되거나 변경되면 바로 tailwindcss의 Just-in-time 형식으로 `tailwind_output.css` 에 css 코드가 라이브로 추가될 것이다.

- 여기서 말하는 **Just-in-time** 형식이란 내가 HTML 태그에 필요한 tailwindcss class인 `mt-4` 를 적었다면 `tailwind_output.css` 에는 오직 `.mt-4` css 코드 하나만 추가되는 것이다.

> 예전에 tailwindcss의 몇 버전이였는지 모르겠지만, 초기때는 아예 Just-in-time형식이 없어서 엄청나게 무거운 통 css파일 (모든 클래스가 담겨져 있는)을 사용했었다. 그 후로는 특정 플러그인을 사용해 Just-in-time 형식으로 경량화 된 css파일을 사용할 수 있었고, 지금 현재는 Always Just-in-time형식으로 사용해 내가 사용한 css코드만 파일에 추가되고 있다.

여기까지가 tailwind 설치 방법 중 `1.Tailwind CLI` 가 전부이다. (참 간단하다.)




### ⑥ tailwindcss를 적용할 HTML 문서에 빌드된 css파일 link해주기

-`deepDive` 루트 폴더에 새로운 HTML 문서를 생성하자. (ex: index.html)

-`<head>` 태그 안에 `tailwind_output.css` 파일을 link시켜주자.

- `<link href="/dist/tailwind_output.css" rel="stylesheet">` 코드 추가

-`<body>` 에 `<h1>`태그 생성 후 tailwind 관련 된 `class` 를 추가해보자.

```html
<head>
	<link href="dist/tailwind_output.css" rel="stylesheet">
</head>
<body>
	<h1 class="text-5xl font-bold text-pink-600">
		Tailwindcss Deep Dive!
	</h1>
</body>
```
위와 같이 tailwindcss 값을 적어주면 `tailwind_output.css` 파일에 자동으로 Just-in-time형식으로 해당 css코드만 추가된다.
```css
.text-5xl {
    font-size: 3rem;
    line-height: 1;
}

.font-bold {
    font-weight: 700;
}

.text-pink-600 {
    --tw-text-opacity: 1;
    color: rgb(219 39 119 / var(--tw-text-opacity));
}
```

![image-20220216132437150](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216132437150.png)


## 😱Error Issue.1
```terminal
$npx tailwindcss -i ./src/tailwind_input.css -o ./dist/output.css --watch
```
혹시 이 명령어를 치고 난 후 아래와 같은 경고 메세지 뜨는 경우(tailwind css도 적용이 안됨)

{{<notice "error">}}
warn - No utility classes were detected in your source files. If this is unexpected, double-check the `content` option in your Tailwind CSS configuration.
{{</notice >}}

▶문제 원인 찾기 : 바로  `tailwind.config.js` 파일에서 `content` 경로 설정에 문제가 있다는 것이다.

![image-20220216130709398](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216130709398.png)

-나의 실수를 확인해보자.

- `deepDive > src` 폴더에 `index.html`을 생성한 게 아니라 `deepDive` 루트 경로에 `index.html` 을 생성했다.

![image-20220216131211117](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220216131211117.png)

- 분명 `tailwind.config.js > content` 값에는 `./src/**/*.{html,js}`, 즉 src폴더 안에 있는 모든 html,js파일들로만 설정을 해주었었다. 설정값에는 `src` 폴더 내부 파일에만 tailwindcss가 적용되게 설정되어 있는데, 루트경로에 tailwindcss를 사용하려고 하니 경고 메세지가 뜬 것이였다.

### 😃Solution
{{<notice "solution">}}
`tailwind.config.js`파일에 루트 경로 설정값을 추가시켜 준다.<br/>
아래 코드 내용을 참고해 자신의 프로젝트에 맞게 설정해주면 된다.<br/>
{{</notice >}}
```js
//Erro.1 → Solution Code
module.exports = {
  content: [
      'index.html', //루트 경로의 index.html 단일 파일에만 적용
      '*.{html,js}', //루트 경로의 모든 html,js파일
      './src/**/*.{html,js}', //src 경로의 모든 html,js파일
  ],
```

# 마무리하며..
이왕 이렇게 시작한거 앞으로 tailwindcss와 관련된 다양한 포스트를 만들어봐야겠다.
[포스트 예정]
- 내가 자주 사용하는 tailwindcss 기능들과 실제 예제
- 내가 잘 몰랐던 (자주 사용하지 않았던) tailwindcss 기능들과 실제 예제
- tailwind 공식 youtube에서 알려주는 내용 정리와 실제 예제
- 최신 3.0으로 업데이트 되면서 추가된 새로운 기능들