# <img src="https://user-images.githubusercontent.com/112090905/218363981-180d3f71-99d8-439f-89ea-abb4e5a85cd8.png" style="width:50px; hieght:50px;"> 위드컴퍼니</img>
![image (8)](https://user-images.githubusercontent.com/112090905/218364847-9899af1e-fc00-4284-975e-3742ddf9ca99.png)
<br>

## 🧾 서비스 소개
* <b>서비스명</b> : Panoptic Segmentation을 이용한 실시간 영상 분석 서비스
* <b>서비스설명</b> : 
   * 자율 주행 시스템 핵심 기술인 객체 인식의 정확도 높은 모델을 구현하고자 함
   * 성장하는 시장에 알맞게 도로 환경 데이터를 19개 단위로 라벨링이 되어있는 25,000장 사진을 학습시킴
   * 실시간 영상 분석 서비스를 제공하여 카메라에 인식된 객체의 정확도를 실시간으로 파악할 수 있음
   * AI서비스를 개발하거나 고도화 시키고 싶은 스타트업 기업에게 객체 인식 AI개발의 기회를 제공함
<br>

## 🖼 Panoptic Segmentation
<img src ="https://user-images.githubusercontent.com/112090905/218389196-cbb51d64-774c-4dcc-a374-5faf75e037ed.png" />

* 팬옵틱 분할 기법에서는 객체의 정보를 불가산 객체(stuff) 와 가산 객체 (thing)로 구분하여 분할을 적용한다.
불가산 객체는 무정형의 불가산 영역을 의미하며, 대표적으로 하늘, 도로 등이 이에 해당한다. 가산 객체는 객체 아이디가 부여되는 객체를 의미하며, 차, 트럭, 사람 등이 이에 해당한다.
의미론적 분할 기법으로는 이미지의 모든 픽셀에 대하여 불가산 객체와 가산 객체에 대한 구분 없이 픽셀단 위의 클래스 예측을 한다. 객체 분할 기법으로는 가산 객체로 분류된 클래스에 대하여 객체 아이디, 클래스, 마스크에 대한 예측을 한다. 
* 그림에서는 동일한 입력 영상에 대한 의미론적 분할 기법, 객체 분할 기법, 팬옵틱 분할 기법 각각의 결과를 보여준다.
팬옵틱 분할 기법은 크게 top-down method와 bottom-up method로 구분된다. Top-down method는 객체 분할 기법과 의미론적 분할 기법을 병렬적으로 수행하는 방법이다.
반면, bottom-up method는 의미론적 분할 기법을 한 후, 해당 정보를 이용하여 객체 분할 기법을 하는 순차적인 방법이다. 다음 장에서는 각 top-down method와 bottom-up method에 해당하는 대표적인 모델들의 구조와 주요 동작원리에 대해서 분석한다.
<br>(출처:대한임베디드공학회논문지-딥 러닝 기반의 팬옵틱 분할 기법 분석)


## 📅 프로젝트 기간
2023.01.09~2023.02.16 (6주)
<br>

## ✨ 주요 기능
* 실시간 영상 분석
* 이미지 분석
* 개발 의뢰서 작성(이용자) / 의뢰서 목록 확인(관리자)
* 회원가입 및 로그인
<br>

## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>Back-end</td>
        <td>
            <img src="https://img.shields.io/badge/Java-FF4C00?style=for-the-badge" />
            <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge" />
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black" />
            <img src="https://img.shields.io/badge/MyBatis-D10D0D?style=for-the-badge" />
            <img src="https://img.shields.io/badge/JSP-FF7D44?style=for-the-badge" />
            <img src="https://img.shields.io/badge/Servlet-FFAC89?style=for-the-badge" />
        </td>
    </tr>
    <tr>
        <td>Front-end</td>
        <td>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white" />
            <img src="https://img.shields.io/badge/CSS3-00B2FF?style=for-the-badge&logo=CSS3&logoColor=white" />
            <img src="https://img.shields.io/badge/JSP-FF7D44?style=for-the-badge" />
            <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white" />
            <img src="https://img.shields.io/badge/ajax-23C8D2?style=for-the-badge" />
            <img src="https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge" />
            <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge" />
        </td>
    </tr>
    <tr>
        <td>Data & Server</td>
        <td>
            <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=Oracle&logoColor=white" />
            <img src="https://img.shields.io/badge/Apache Tomcat 9.0-FFD425?style=for-the-badge&logo=Apache Tomcat&logoColor=black" />
            <img src="https://img.shields.io/badge/Flask-929292?style=for-the-badge&logo=Flask&logoColor=white" />
            <img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge" />
        </td>
    </tr>
    <tr>
        <td>Library & API</td>
        <td>
            <img src="https://img.shields.io/badge/Lombock-A40000?style=for-the-badge" />
            <img src="https://img.shields.io/badge/socket.io-010101?style=for-the-badge&logo=Socket.io&logoColor=white" />
            <img src="https://img.shields.io/badge/jQuery-2E7594?style=for-the-badge&logo=jQuery&logoColor=white" />
        </td>
    </tr>
    <tr>
        <td>IDE</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/SQL Developer-E4E3E2?style=for-the-badge&"/>
            <img src="https://img.shields.io/badge/Spring Developer-6DB33F?style=for-the-badge&"/>
            <img src="https://img.shields.io/badge/jupyter-F37626?style=for-the-badge" />
        </td>
    </tr>
    <tr>
        <td>Etc.</td>
        <td>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white" />
            <img src="https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=Slack&logoColor=white" />
        </td>
    </tr>
</table>
<br>

## ⚙ 시스템 아키텍처
![image](https://user-images.githubusercontent.com/112090905/218383784-662ebda3-f022-4b62-be41-fd77559aa700.png)
<br>

## ✏ 유스케이스
![image](https://user-images.githubusercontent.com/112090905/218383860-4cf6a0a8-f45a-4bf9-9829-ebc2516a2b2c.png)
<br>

## ✏ 서비스 흐름도
![image](https://user-images.githubusercontent.com/112090905/218383699-62645cab-0926-43a9-8f77-f27c9b046f2f.png)

<br>

## ✏ ER다이어그램
![image](https://user-images.githubusercontent.com/112090905/218383930-de018699-3442-4358-be3a-1ae291f9ab51.png)
<br>

## 🖥 화면 구성

### 🖱 메인
<table>
  <tr>
    <th>메인</th>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/112090905/218385156-66331902-d1f3-4bbe-b162-01495e8f837a.png" /></td>
  </tr>
</table>
<br>

### 🖱 회원가입
<table>
  <tr>
    <th>회원가입</th>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/112090905/218385481-481cb9f0-1ede-4869-bb53-14024c33b8e2.png" /></td>
  </tr>
</table>
<br>

### 🖱 로그인
<table>
  <tr>
    <th>로그인</th>
  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/112090905/218385614-f339fa46-36c7-4586-91a1-ee99b94ff898.png"/></td>
  </tr>
</table>
<br>


### ⌨ Index
<table>
  <tr>
    <th>Index</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218389051-958b6aef-2849-43de-8ddc-1caaa4ec369c.png" />
    </td>
  </tr>
</table>
<br>

### ⌨ Developer
<table>
  <tr>
    <th>Image Test</th>
    <th>Panoptic Document</th>
    <th>Demo Video(AOR)</th>
  </tr>
  <tr>
    <td>
      <p><img src="https://user-images.githubusercontent.com/112090905/218392337-0dfc51bf-736e-49b2-a1df-bfbd15cdadb6.png" style="width:350px; hieght:350px;" /></p>
      <p><img src="https://user-images.githubusercontent.com/112090905/218392462-b8fa5091-4b81-458c-9135-d24dfc9fe268.png" style="width:350px; height:250px;" /></p>
    </td>
    <p><td><img src="https://user-images.githubusercontent.com/112090905/218394640-912b3b61-17c0-4b8f-bc9e-69bc3f949854.png" style="width:350px; hieght:500px;" /></p></td>
    <p><td><img src="https://user-images.githubusercontent.com/112090905/218393787-a4033bca-5c4b-4309-a081-dee309ef77ee.png" style="width:350px; hieght:500px;" /></p></td>
   
  </tr>
</table>
<br>

### ⌨ Case Study
<table>
  <tr>
    <th>Case Study</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218391016-525575f5-5c16-4f4a-8243-083526a8bde1.png" />
    </td>
  </tr>
</table>
<br>

### ⌨ 의뢰서 신청서 작성
<table>
  <tr>
    <th>의뢰서 신청서 작성</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218387673-a191ac41-4b9e-4b57-9159-20ba0b624736.png" />
    </td>
  </tr>
</table>
<br>

### ⌨ 의뢰서 목록 확인
<table>
  <tr>
    <th>의뢰서 목록 확인</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218388400-c40269a3-fd2d-49ed-9989-b9b92b6947d2.png" />
    </td>
  </tr>
</table>
<br>



## ⭐ 팀원 역할
<table>
  <tr>
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218397923-44f1bb28-c83a-4910-8771-2bd100976b8a.png" width="100" height="100" />
</td>
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218398121-712e531c-1346-4dbe-9d34-917c0a147d34.png" width="100" height="100" />
</td>
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218399734-e2045d68-cd3c-45d9-b946-546ec38ff490.png" width="100" height="100" />
</td>
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218397828-a441eff9-66e0-4fd6-b129-c82e3fca8176.png" width="100" height="100" /></td>
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218398186-eb46eb36-c9f5-42c8-bf01-dee9f61041fd.png" width="100" height="100" /></td>
  </tr>
  <tr>
    <td align="center"><strong>한가연</strong></td>
    <td align="center"><strong>김지수</strong></td>
    <td align="center"><strong>김주희</strong></td>
    <td align="center"><strong>송승호</strong></td>
    <td align="center"><strong>정준석</strong></td>
  </tr>
  <tr>
    <td align="center"><b>Main</b></td>
    <td align="center"><b>Main</b></td>
    <td align="center"><b>Main</b></td>
    <td align="center"><b>Main</b></td>
    <td align="center"><b>Main</b></td>
  </tr>
  <tr>
    <td align="center">팀장, Frontend</td>
    <td align="center">PM</td>
    <td align="center">Frontend</td>
    <td align="center">D.A/M</td>
    <td align="center">Backend</td>
  </tr>
  <tr>
    <td align="center">
      1.리스크관리(기술적 문제, 팀웍 문제)<br>
      2.메인페이지, 관리자페이지, 테스트페이지, Document페이지<br>
      3.리스크관리(기술적 문제, 팀웍 문제)<br>
      4.멘토링일지 작성<br>
    </td>
    <td align="center">
      1.이미지 업로드, 분석 결과 출력, 실시간 분석 이미지 출력
    </td>
    <td align="center">
      1.화면 UX/UI구현<br>
      2.화면 설계서 작성<br>
      3.Main, 로그인, 회원가입, 리뷰, 로고제작<br>
    </td>
    <td align="center">
      1.서버 API 설계 및 구현<br>
      2.데이터베이스 구축<br>
      3.데이터베이스 요구사항 분석서, 테이블 명세서 작성<br>
      4.채팅, 결제, 게시물 목록, 로그인, 회원가입 기능 구현<br>
      5.거래내역, 결제, 찜 목록, 검색 화면구현<br>
    </td>
    <td align="center">
      1.회원가입, 로그인
    </td>
  </tr>
    <tr>
    <td align="center"><b>Sub</b></td>
    <td align="center"><b>Sub</b></td>
    <td align="center"><b>Sub</b></td>
    <td align="center"><b>Sub</b></td>
    <td align="center"><b>Sub</b></td>
  </tr>
  <tr>
    <td align="center">Frontend, 공통업무</td>
    <td align="center">Backend, Frontend, 공통업무</td>
    <td align="center">Backend, 공통업무</td>
    <td align="center">Backend, 공통업무</td>
    <td align="center">공통업무</td>
  </tr>
  <tr>
    <td align="center">
      1.검색, 찜 기능구현<br>
      2.Header, 회원가입, 메인 페이지 게시글 출력 화면 구현<br>
      3.프로젝트 기획서, 요구사항 정의서 작성<br>
    </td>
    <td align="center">
      1.게시물 작성 및 관리, 포트폴리오 관리, 게시물 상세 페이지, FAQ 화면 구현<br>
      2.프로젝트 기획서, 요구사항 정의서 작성
    </td>
    <td align="center">
      1.리뷰기능 구현<br>
      2.프로젝트 기획서, 요구사항 정의서 작성
    </td>
    <td align="center">
      1.프로젝트 기획서, 요구사항 정의서 작성
    </td>
    <td align="center">
      1.프로젝트 기획서, 요구사항 정의서 작성
    </td>
  </tr> 
  <tr>
    <td align="center"><a href="https://github.com/444tang" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/KimJi5u" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/99wise" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/songseungho-v" target='_blank'>github</a></td>
    <td align="center"><a href="https://github.com/JungJoonseok" target='_blank'>github</a></td>
  </tr>
</table>
<br>

## 🤾‍♂️ 트러블슈팅
* <b>문제1</b>
  * 비동기 통신으로 검색 시 공백이어도 전체검색되는 문제
  * 해결방안 : 공백시 전체 검색되는 코드의 변수에 값을 설정하여 공백으로 검색 안되게 수정
* <b>문제2</b>
  * css 취합시 충돌 발생
  * 해결방안 : 검사(F12)이용하여 적용되는 스타일 확인한 후, 코드 수정하여 해결
* <b>문제3</b>
  * 하나의 submit 버튼을 통해 한 번에 다른 경로로 파일 업로드하는 문제
  * 해결방안 : 페이지를 하나 더 생성하여 각각의 페이지에서 파일 업로드 할 수 있게 수정 
* <b>문제4</b>
  * tomcat과 flask의 소켓통신 문제
  * 해결방안 : js에서 라이브러리를 잘못 사용하고 있어 제대로된 라이브러리로 수정, cors_allowed_origins 에러는 socketio의 속성값에 cors_allowed_origins=&#42;값을 주면서 해결
