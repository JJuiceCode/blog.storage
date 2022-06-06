---
title: "Tailwindcss_deepDive_unfamiliarFeatures"
description: ""
author: "JJuice"
tags: [tailwindcss]
categories: [study]
date: 2022-02-17T14:14:37+09:00
draft: true
---


# 시작하기에 앞서

유튜브 tailwindcss 공식 채널에서 나오는 강의 영상들을 보면 내가 잘 모르거나 거의 사용한적이 없는 기능들이 나온다. 물론 모든 기능을 사용할 필요는 없지만 굉장히 활용도가 높음에도 불구하고 단지 내가 익숙하지 않거나 잘몰라 사용하지 않았던 기능들이 무엇이 있는지 확인한 후 직접 사용해보기로 했다.







### @ prose
{{<notice "word">}}
prose : [명사] 산문(체)
{{</notice>}}

tailwindcss에서 글자 영역을 조금 더 쉽게 사용할 수 있게 만들어 놓은 패키지라고 보면 좋을거 같다. (`@tailwindcss/typography`플러그인을 설치해줘야 사용이 가능 → [공식 문서 @tailwindcss/typogrphy 관련 설치 및 설명](https://tailwindcss.com/docs/typography-plugin))

{{<notice "qna">}}
Q.Tailwind CLI 설치방법이 아닌 CDN 링크 방식으로 `@tailwindcss/typhography` 플러그인을 사용할 수는 없는 것일까? <br/>
A.사용할 수 있다! 어떻게? 아래에 나온 것 처럼 `<script>` 요소를 추가해 주면 된다.
{{</notice>}}

```html
<!-- 기존 CDN -->
<head>
	<script src="https://cdn.tailwindcss.com"></script>
</head>

<!-- typhography플러그인 추가 CDN -->
<head>
	<script src="https://cdn.tailwindcss.com?plugins=typography"></script>
</head>
```


공식 문서에 나온  @tailwindcss/typography > Element modifiers을 적용해보고 싶었는데

-Element modifiers 예 (이것말고도 다양하게 `prose` 내부 요소들에 대한 수정이 가능하다.)

- `prose-img:rounded-xl ` : prose영역안의 모든 `img`에 사각 테두리에 라운드를 준다.
- `prose-headings:underline` : prose영역안의 모든 `h1,h2,--h4,th`에 밑줄을 추가시킨다.





@ clip-path