# 🍽 Today`s Menu
> openAI API를 활용한 chatGPT 기반 AI 식단 추천 및 관리 서비스
> ![intro](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/2e38c123-c941-4cc1-ae9a-31fd9a718d10)

</br>

## 1. 제작 기간 & 참여 인원
- 2023년 11월 28일 ~ 2024년 1월 5일
- 팀 프로젝트
- 참여 인원   

| 이름 | 역할 |
|---|---|
| 최현민(팀장) |Front-end/Back-end |
| 이은희(부팀장) |Front-end |
| 주은혜 |Front-end |
| 김맹진 |Back-end |
| 박지승 |Back-end |


</br>

## 2. 사용 기술
#### `Back-end`
  - Java 17
  - Jsp/Servlet
  - Maven
  - Oracle SQLD
  - Gson Library
  - MyBatis
  - Lombok
  - Python
  - Apache Tomcat 9.0
#### `Front-end`
  - JS
  - Fullcalendar Library
  - openAI chatGPT API

</br>

## 3. ERD 설계
![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/0acdf300-b934-4646-8ac7-331bb1ced34c)



## 4. 핵심 기능
이 서비스의 핵심 기능은 AI식단추천 기능입니다.  
사용자는 키워드를 선택하고 추천받기를 눌러 GPT로부터 식단을 추천을 받고, 사용자가 원할 경우 저장할 수 있습니다.
이 단순한 기능의 흐름을 보면, 서비스가 어떻게 동작하는지 알 수 있습니다.
</br></br>
- 키워드 선택 화면
![화면 캡처 2024-04-12 171459](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/73d73744-0aac-427b-80be-406829de0eee)   

- 프롬프트와 추천 결과 화면
![화면 캡처 2024-04-13 145808](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/a405a148-35a8-4c8f-be2d-32469c3fabde)   
![추천 결과](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/7eaabcf9-9009-4eee-9c50-b460c318109a)   


<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 4.1. 전체 흐름
![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/fc9feebf-dbbc-495f-b9f0-e6392f9997a7)

### 4.2. 사용자 요청
![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/c1034f0e-f8db-422d-935c-e7de08ef3696)

- **openAI API 요청** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/35be680d210a97496446ff8c8174d8c91f8dea27/EP2/src/main/webapp/jsp/main.jsp#L476C9-L476C9)
- 사용자 입력에 따른 메시지 설정
  - 사용자가 체크박스를 선택하지 않았을 때와 선택한 경우에 따라 다른 메시지를 구성합니다.
  - 선택 여부에 따라 목적, 재료, 스타일 등을 메시지에 포함시킵니다.
- OpenAI GPT-3.5 API 호출:
  - 구성된 메시지를 OpenAI의 GPT-3.5 API에 전달하여 대화 생성을 요청합니다.
  - API 호출을 위한 데이터를 구성하고, AJAX를 사용하여 비동기적으로 API에 요청을 보냅니다.
- API 응답 처리:
  - API로부터의 응답을 받으면, 결과를 DOM에 추가하고 특정 요소에 값을 설정합니다.
  - API에서 생성된 응답 메시지의 내용을 화면에 출력합니다.

![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/df0a3f55-a80f-4881-8c6f-855b85001e8e)

- **POST 요청** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/9f23cfa466962fbf3f28a4fa1a5d556152078ac8/EP2/src/main/webapp/jsp/main.jsp#L447C20-L447C69)
  - form 요소를 사용하여 컨텐츠를 저장하는 POST 요청을 서버로 전송.

### 4.3. Controller

![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/93ccb117-741e-47fb-8702-bfa3b7dc1cb9)

- **요청 처리** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/859f48bab53169d2bc7859a7a4cd24aba2271314/EP2/src/main/java/com/todaysmenu/frontcontroller/FrontController.java#L33)
  - Controller에서는 요청을 화면단에서 넘어온 요청을 받고, Service 계층에 로직 처리를 위임합니다.

- **결과 응답** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/f4e13f1bdeacfdcc7ff73e45ab1e833ed40cdb9a/EP2/src/main/webapp/jsp/board.jsp#L114C1-L114C34)
  - Service 계층에서 넘어온 로직 처리 결과(메세지)를 화면단(게시판)에 나타내줍니다.

### 4.4. Service

![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/94268f6f-797d-441f-9c20-6d6ef0a3107c)

- **API로부터 받은 응답내용 파싱** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/53ffdee5cf2997697bfcc45ccff2cd63d96273f2/EP2/src/main/java/com/todaysmenu/controller/FilteringService.java#L21)
  - API로부터 받은 내용을 FilteringService를 통해 음식명, 식재료, 조리법으로 구분하여 파싱합니다.


### 4.5. DAO

![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/b12986f2-98e4-41d6-a807-c3341388812d)

- **컨텐츠 저장** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/blob/53ffdee5cf2997697bfcc45ccff2cd63d96273f2/EP2/src/main/java/com/todaysmenu/controller/FilteringService.java#L43)
  - 파싱이 끝난 컨텐츠는 CalDAO, BoardDAO를 통해 DB에 저장합니다.
  - 저장된 컨텐츠는 다시 DAO - Service - Controller를 거쳐 화면단에 송출됩니다.
 
  - (캘린더 화면) </br> ![calendar](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/d4bef1cb-428d-458c-a7c0-466c35edb38f)    
  - (저장된 레시피 목록 화면) </br> ![board list](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/d67a2c52-dc1b-4986-ad2f-e9f138d1e117)    
  - (저장된 레시피 화면) </br> ![board detail](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/30e83442-78d9-4555-bc6d-9d38309139ca)   

</div>
</details>

</br>

## 5. 핵심 트러블 슈팅
![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/202ce7ac-6006-454e-bd77-d4c19a1c7fe2)
### 5.1. property 불일치 문제
- fullcalendar의 날짜 관련 property는 start와 end였지만 오라클 SQLD에서는 해당 property가 예약어이기 때문에 사용 불가했습니다.
- 이에 따라 다른 키워드를 쓸 수밖에 없었고 그 결과 property 불일치로 캘린더 화면단으로 등록이 불가했습니다.
- gson 라이브러리를 불러와 addProperty를 사용하여 property 재할당 후 json 전송하는 방식으로 해결하였습니다.


## 6. 그 외 트러블 슈팅
<details>
<summary>비로그인 상태에서 컨텐츠 저장하기를 눌렀을 때 Null값으로 인한 서버 오류</summary>
<div markdown="1">

- Javascript의 return false를 사용하여 제출을 방지하고 페이지 이동을 막음.

</div>
</details>

<details>
<summary>GitHub File 복제시 서버 오류 문제</summary>
<div markdown="1">
  
  - TomcatServer 삭제 후 Server 재설정으로 해결.
  
</div>
</details>

</br>
<!--
## 7. 회고 / 느낀점
>
-->
