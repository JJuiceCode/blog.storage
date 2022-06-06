---
title: 'PHPStorm & Webstorm에서 특정 폴더 검색 제외하기'
description: 'PHPStorm 프로젝트내 검색할때 특정 폴더 제외하고 검색결과 확인하는 방법 알아보기'
author: 'JJuice'
images: ['/images/thumb/2022/thumb-tool_phpstorm_exclusion_folder.png']
tags: ['phpstorm', 'setting']
categories: ['tool']
date: 2022-01-25
draft: false
---

# 시작하기에 앞서..

github에서 fork해 온 Hugo Theme를 custom 진행하면서 프로젝트내 검색을 자주하게 된다. 지금같은 환경에서 프로젝트내 검색을 하게 되면 Hugo Builder로 만들어 진 'public' 폴더도 포함되어 너무 많은 검색 결과가 나오게 되고, 결국 내가 원하는 검색 결과를 찾기까지 시간이 많이 소비된다.

바로 이런 경우를 위해 PHPStorm에서 손쉽게 원하는 폴더를 검색 대상에 제외시킬 수 있게 '설정'창에서 손쉽게 변경 할 수 있다. (JetBrains 관련 된 모든 툴도 해보진 않았지만 적용이 가능하지 않을까 싶다.)

※ 참고사항

- 윈도우 OS 환경
- 한글 Plug in 세팅 된 PHPStorm 사용
- 검색 관련 된 PHPStorm 단축키
  - `Ctrl + Shift + F` : 프로젝트내 전체 검색

## 1.설정창에서 특정 폴더 검색 제외 시키기

★ 적용 방법

- PHPStorm 설정(Setting)창 열기 (단축키: `Ctrl + Alt + S`)
- 디렉토리(영어버전도 directory지 않을까요?) 메뉴를 클릭
- 디렉토리창에서 제외를 원하는 폴더에 우측을 클릭 후 **제외됨**(Alt+E) 클릭

![image-20220125111137670](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220125111137670.png)

## 2.제외시키기 적용 후 확인해보기

[적용 전 - 프로젝트 내 검색]

- 아래와 같이 public폴더에 있는 모든 내용이 나온다.

![image-20220125111437446](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220125111437446.png)

[적용 후 - 프로젝트 내 검색]

- 아래와 같이 더 이상 public 폴더가 검색 대상에서 제외된다.

![image-20220125111546765](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220125111546765.png)
