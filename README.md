# 🍽 Today`s Menu
> openAI API를 활용한 chatGPT 기반 AI 식단 추천 및 관리 서비스

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

</div>
</details>

</br>

## 5. 페이지
- 시작 화면
  - 시작하기 버튼을 누르면 메인 화면으로 이동합니다.   
  ![intro](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/2e38c123-c941-4cc1-ae9a-31fd9a718d10)
- 메인 화면
  - 키워드를 선택하고 추천받기를 누르면 AI가 선택한 키워드에 맞춰 식단을 추천해줍니다.
  - 저장하기를 누르면 추천받은 식단을 저장할 수 있습니다.(회원 한정)   
    <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/73d73744-0aac-427b-80be-406829de0eee" width="300px" alt="키워드 선택"></img>
    <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/7eaabcf9-9009-4eee-9c50-b460c318109a" width="600px" alt="추천 결과"></img>
- 회원가입 및 회원가입 완료 화면   
  <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/4fc947e0-b916-47be-b448-5f7cd245fbd4" width="300px" alt="회원가입"></img>
  <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/27e51d22-5795-455d-bb21-be74b15f9eb1" width="600px" alt="회원가입 완료"></img>
- 로그인 화면
  - 가입 시 설정한 아이디와 비밀번호를 입력합니다. 둘 중 하나 이상 틀리면 알림을 띄워줍니다.
  ![로그인 페이지](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/af47b190-54d7-4215-889e-80363c777817)
- 레시피 저장소(회원 한정)
  - 회원이 저장한 식단을 보여줍니다.   
    <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/d67a2c52-dc1b-4986-ad2f-e9f138d1e117" width="450px" alt="식단 목록"></img>
    <img src="https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/30e83442-78d9-4555-bc6d-9d38309139ca" width="450px" alt="저장된 식단"></img>
- 캘린더 화면
  - 회원이 저장한 식단을 다음날 기준으로 저장합니다.
  - 회원은 저장된 식단을 보면서 식단 관리를 할 수 있습니다.   
    ![calendar](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/d4bef1cb-428d-458c-a7c0-466c35edb38f)
- 유튜브 레시피
  - 인기 있는 레시피 채널 3곳의 영상을 크롤링으로 가져옵니다.
    ![youtube page](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/c995f5a6-e016-4135-a4bd-96498f91766b)
- 회원정보 화면
  - 회원이 로그인을 한 상태라면 상단의 사람 모양 아이콘을 눌러 가입 시 입력한 정보를 확인하고 수정할 수 있습니다.   
    ![my page](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/144122046/fee36cf5-8fd2-4880-9acd-3794277b6d42)

## 6. 핵심 트러블 슈팅
![](https://github.com/SMHRD-2021-KDT-AI-16/energizoRePo/assets/141302317/202ce7ac-6006-454e-bd77-d4c19a1c7fe2)
### 6.1. property 불일치 문제
- fullcalendar의 날짜 관련 property는 start와 end였지만 오라클 SQLD에서는 해당 property가 예약어이기 때문에 사용 불가했습니다.
- 이에 따라 다른 키워드를 쓸 수밖에 없었고 그 결과 property 불일치로 캘린더 화면단으로 등록이 불가했습니다.
- gson 라이브러리를 불러와 addProperty를 사용하여 property 재할당 후 json 전송하는 방식으로 해결하였습니다.


## 7. 그 외 트러블 슈팅
- 비로그인 상태에서 컨텐츠 저장하기를 눌렀을 때 Null값으로 인한 서버 오류
  - Javascript의 return false를 사용하여 제출을 방지하고 페이지 이동을 막음.
- GitHub File 복제시 서버 오류 문제
  - TomcatServer 삭제 후 Server 재설정으로 해결.

</br>
<!--
## 7. 회고 / 느낀점
>
-->
