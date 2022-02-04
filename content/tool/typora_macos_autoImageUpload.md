---
title : "Typora 이미지 자동 업로드 (mac 환경)"
description : "uPic & github을 이용한 typora 앱에서 이미지 자동 업로드 방법 알아보기"
author : "JJuice"
images : ["/images/thumb/2022/blogthumb_typora_main.png"]
tags : ["github", "uPic", "typora"]
categories : ["tool"]
date: 2022-01-24 
draft: false
---
# 시작하기에 앞서..

2022년부터는 제대로 된 나만의 블로그를 만들어서 FrontEnd와 관련 된 개발 이야기/나의 생각들과 좋아하는 것들을 다이어리 처럼 기록해 보고 싶었다.  그래서 블로그 생성을 위해 구글링을 하게 되었고 그 결과 Hugo + Netlify + Foresty을 활용해 기본 블로그를 세팅한 후 포스트를 올리기 위한 마크다운 편집기가 필요했다.

한참 전에 typora를 잠깐 써보았는데 좋은 기억이 있어서 오랜만에 다시 쓸려고 하니 유료화가 되어 있었다. 헉!!하고 5초 정도 놀라긴 했지만 좋은 프로그램을 돈주고 쓰는걸 아까워 하는 스타일이 아니라 유료 라이센스를 구매하고 (3대의 기기에서 사용도 가능!!) 이왕 돈 주고 쓰는거 제대로 써보자 하는 마음이 들었다.

마크다운 쓰는 형식은 워낙 익숙해져서 문제는 없었지만 다양한 이미지 자료 (특히 에버노트의 스샷 기능을 많이 활용중)를 일일히 github에 올리고 또 마크다운 이미지 형식으로 적어주는게 너무 번거롭게 느껴져 어떻게 해야하나 하고 있었는데, typora에는 마크다운 형식에 손쉽게 이미지를 업로드 할 수 있게 해주는 설정이 추가되었던 것이다. (무야호!!)

일단 회사컴은 윈도우 버전이기에 [IT회사원 신동갓 | Typora 이미지 삽입 자동 업로드(window)](https://donggod.tistory.com/139) 자료를 보고 따라하니 초보자인 나도 손쉽게 자동 이미지 업로드 세팅을 완료했었다.

![image-20220123184758960](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123184758960.png)

문제는 집에서 맥북으로 세팅하려하니 윈도우 os와 똑같이 할 수 가 없었다. (ㅠㅠ왜 맥에서는 PicGo-Core > open config file이 없는 것이냐..)

![image-20220123184852902](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123184852902.png)



맥에서는 윈도우에서처럼 picGoCore 업로드 세팅이 안되기 때문에 새로운 방법을 찾아야 했다. 구글링 결과 무료 오픈 소스인 uPic으로 자동 이미지 업로드 세팅을 도전해 보기로 했다.



※ 참조 자료

- [typora 공식 문서](https://support.typora.io/Upload-Image/#ipic-macos-freemium)
- [blog.svend.cc/upic/en/](https://blog.svend.cc/upic/en/) 자료





## 1.typora 설정 세팅

![image-20220123184954590](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123184954590.png)

- 설정 > 이미지 창의 첫번째 선택란은 upload image로 선택한다.
- 밑의 3개의 체크란에 체크를 해준다.
- Image Uploader 선택란에서 uPic을 선택해준다.



## 2.터미널에서 upic 세팅

-터미널 창에서 아래의 메세지를 입력해주자.

```markdown
$brew install bigwig-club/brew/upic --cask
```

-gihub 에서 [release](https://github.com/gee1k/uPic/releases) 다운([uPicd.zip](http://uPicd.zip)) 받은 후 프로그램 intall





## 3.맥북 시스템 환경 설정 세팅

-맥북 '시스템 환경 설정 > 확장 프로그램 > Finder 확장 프로그램' 창에서 uPic 선택

![image-20220123185212254](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123185212254.png)



-스샷을 위한 시스템 환경 정 > 보안 및 개인정보 보호 > 개인 정보 보호 > 화면 기록 > uPic 허용

![image-20220123185229182](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123185229182.png)





## 5.github에 이미지 호스팅 연결 시키기

> 자신의 github 계정에 사용하는 이미지 자료들을 업로드할 repository가 있는 상태여야 합니다. (github에서 repository를 생성하는 설명은 따로 추가하지 않겠습니다.)



### github access token 발급

1.설정창 클릭

![image-20220123185348244](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123185348244.png)



2.Developer settings 클릭

![image-20220123185430229](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123185430229.png)



3.Personal access tokens 클릭 > Generate new token 클릭

![image-20220123185509155](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123185509155.png)



4.new token 세팅

- 어디에 access가 되는지 간단히 note란에 메모 작성
- 토큰 만료 기간 설정 (자주 토큰을 바꿔주는게 보안적으로 더 안전하겠죠? 전 귀찮아서 no expiration)
- 아래 이미지처럼 체크란 체크하고 Update token 클릭
- token 생성 완료 → token 코드 복사

> 한 번 생성된 토큰 내용은 생성 시에만 확인이 가능하니 보안이 잘 되는 것에 기록해두는 것도 좋을거 같습니다. 전 다른 컴에도 세팅하다가 토큰을 잊어버려 토큰을 재발급 후 다시 세팅을 해주었답니다.





### uPic 환경 설정 세팅

> 맥 메뉴 막대 있는 곳에 uPic 프로그램을 선택 후 설정 창에 들어갈 수 있습니다.

-uPic 환경 설정 > Host 창 > github 추가

![image-20220123190120045](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123190120045.png)



**★ 우측 설정창 내용 추가하기**

- 현재 제가 github에서 사용하는 이미지 저장소 repository 스샷을 참고해서 **uPic 설정창에는 본인의 Repository 내용을 적용해주자.**
  - 저는 blog.image.server Repository에 루트에서  2022 이름의 폴더를 생성하고 그 안에 이미지 저장 세팅을 할려고 했습니다.

![image-20220123190242078](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123190242078.png)

1. uPic 설정창 관련 내용 입력

- `Owner : JJuiceCode`

- `Repo : blog.image.server`

- `Token : github에서 생성한 access token`

- `Domain : 비어있게 놔둔다.`

- `Use jsDeliver CDN ... : 여기에 체크하게 되면 typora에서 인증 실패가 뜬다. 체크하지 않는다.`

- `save key : 2022/{year}_{month}_{day}_{random}{.suffix}`

  - repository 루트 경로가 아닌 저와 같이 2022라는 하위 폴더에 저장을 하고 싶다면 위에 내용처럼 폴더명을 표시해줘야 합니다.

  - 원래는 {hour}{minute}{second}도 추가해주었지만 우리가 실제 사용하는 시간내용이 아닌 타임스탬프 내용처럼 나와 삭제했습니다.

  - 저는 대부분의 이미지가 선택영역 스샷으로 이미지를 가져오는 편이라 {filename}을 추가하면 이미지 네이밍이 너무 길어져서 날짜 시간 정보와 random 자동 파일명을 지정해 주었습니다.



2. 내용 입력 완료 후 validate 버튼 누른 후 save 하기



## 6.설정 완료 후 확인해보기

### typora에서 확인

typora 설정 > 이미지 >  Image upload setting 창에서 'Test Uploader' 버튼을 누르면 아래와 같이 '인증 성공' 표시가 나와야 한다.

![image-20220123190516757](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123190516757.png)

## 7.typora에 이미지 붙여넣기

- uPic프로그램으로(메뉴막대에 활성화되어있다면) 'upload from screenshot' 클릭 후 선택영역을 스샷 하면 자동으로 github 저장소에 이미지가 업로드가 된 후 그 상태로 바로 typora에 `ctrl + v`  를 누르면 업로드 된 이미지가 붙여넣기가 됩니다.( 이미지가 복사할때 한 번, 붙여넣기 할때 두 번 이렇게 중첩되서 총 2개의 이미지가 업로드 되지 않는다. 스샷하는 순간 업로드 되고 복사할때는 업로드 되어 스샤 한번에 딱 하나의 이미지만 업로드 된다.)
- 저 같은 경우 스샷은 대부분 에버노트를 활용하기 때문에 에버노트 스샷 후 `ctrl + v` 붙여넣기로도 아래와 같이 typora에서 github 저장소에 이미지를 업로드 한다. (참고로 에버노트 스샷을 활용한다고 하면 활성화 되어있는 uPic 프로그램을 OFF 해도 에버노트 스샷 > typora 붙여넣기 > 자동 업로드 기능은 문제없이 사용가능)

![image-20220123190652086](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123190652086.png)



### 로컬 typora가 아닌 웹상에 올린 이미지 확인해보기

![image-20220123190736652](https://raw.githubusercontent.com/JJuiceCode/blog.image.server/main/2022/image-20220123190736652.png)







# 마무리 하며..

프로그래밍적으로 많은 지식을 알고 있다면 pyhton또는 go를 활용해 조금 더 쉽게 자동 업로드가 가능하겠지만 많이 부족한 나에게 이정도 세팅만으로 이정도 편하게 이미지를 스샷하고 컨텐츠를 만들 수 있다는 것에 너무 기쁘고 감사하다.

과거에 요것 저것 기웃거리며 블로그를 어설프게 만들거 어설픈 컨텐츠를 만들어 올리고 관두기를 반복했었다. 하지만 2022년 올해부터 만큼은 꾸준하게 즐거운 마음으로 틈틈히 내가 알게 된 것을 느끼는 것들 좋아하는 것들에 관해 써볼려고 한다.

더 이상 컨텐츠의 소비자가 아닌 생산자가 되기 위해 JJuice 최선을 다해보자꾸나!!