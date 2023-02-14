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
<br>(이미지 출처:Panoptic-DeepLab (CVPR2020))<br><br>
* 팬옵틱 분할 기법에서는 객체의 정보를 불가산 객체(stuff) 와 가산 객체 (thing)로 구분하여 분할을 적용한다.
불가산 객체는 무정형의 불가산 영역을 의미하며, 대표적으로 하늘, 도로 등이 이에 해당한다. 가산 객체는 객체 아이디가 부여되는 객체를 의미하며, 차, 트럭, 사람 등이 이에 해당한다.
의미론적 분할 기법으로는 이미지의 모든 픽셀에 대하여 불가산 객체와 가산 객체에 대한 구분 없이 픽셀단 위의 클래스 예측을 한다. 객체 분할 기법으로는 가산 객체로 분류된 클래스에 대하여 객체 아이디, 클래스, 마스크에 대한 예측을 한다. 
* 그림에서는 동일한 입력 영상에 대한 의미론적 분할 기법, 객체 분할 기법, 팬옵틱 분할 기법 각각의 결과를 보여준다.
팬옵틱 분할 기법은 크게 top-down method와 bottom-up method로 구분된다. Top-down method는 객체 분할 기법과 의미론적 분할 기법을 병렬적으로 수행하는 방법이다.
반면, bottom-up method는 의미론적 분할 기법을 한 후, 해당 정보를 이용하여 객체 분할 기법을 하는 순차적인 방법이다. 다음 장에서는 각 top-down method와 bottom-up method에 해당하는 대표적인 모델들의 구조와 주요 동작원리에 대해서 분석한다.
<br>(출처:대한임베디드공학회논문지-딥 러닝 기반의 팬옵틱 분할 기법 분석)<br>


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
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=black" />
            <img src="https://img.shields.io/badge/JSP-FF7D44?style=for-the-badge" />
            <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white" />
            <img src="https://img.shields.io/badge/ajax-23C8D2?style=for-the-badge" />
            <img src="https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge" />
        </td>
    </tr>
    <tr>
        <td>Data & Server</td>
        <td>
            <img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=Oracle&logoColor=white" />
            <img src="https://img.shields.io/badge/Apache Tomcat 9.0-FFD425?style=for-the-badge&logo=Apache Tomcat&logoColor=black" />
            <img src="https://img.shields.io/badge/Flask-929292?style=for-the-badge&logo=Flask&logoColor=white" />
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
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218392337-0dfc51bf-736e-49b2-a1df-bfbd15cdadb6.png" />
    </td>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218392462-b8fa5091-4b81-458c-9135-d24dfc9fe268.png" />
    </td>
  </tr>
  <tr>
    <th>Panoptic Document</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218394640-912b3b61-17c0-4b8f-bc9e-69bc3f949854.png" />
    </td>
  </tr>
  <tr>
    <th>Demo Video(AOR)</th>
  </tr>
  <tr>
    <td>
      <img src="https://user-images.githubusercontent.com/112090905/218393787-a4033bca-5c4b-4309-a081-dee309ef77ee.png" />
    </td>
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
    <td align="center"><img src="https://user-images.githubusercontent.com/112090905/218599130-7c104b79-b0ab-4336-b15c-dc9c76a88028.png" width="100" height="100" />
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
      2.메인페이지,<br> 관리자페이지,<br> 테스트페이지,<br> Document페이지<br>
    </td>
    <td align="center">
      1.프로젝트 일정 파악,<br> 개인별 진행사항 파악,<br> 리스크관리(기술적 문제),<br> 회의 진행 및 회의록,<br> WBS작성<br>
    </td>
    <td align="center">
      1.메인페이지,<br> 테스트페이지,<br> Document페이지,<br> 시연 영상 페이지,<br> 활용사례 페이지<br>
    </td>
    <td align="center">
      1.펜옵틱 딥러닝<br>
    </td>
    <td align="center">
      1.DB구현
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
      1.로그인,<br> 회원가입,<br> 의뢰서 작성,<br> 의뢰서 목록,<br> 서버구현,<br> DB구현
      2.Header,<br> 회원가입,<br> 메인 페이지 게시글 출력 화면 구현<br>
      3.프로젝트 기획서,<br> 요구사항 정의서 작성<br>
    </td>
    <td align="center">
      1.이미지 업로드,<br> 분석 결과 출력,<br> 실시간 분석 이미지 출력<br>
      2.차트구현
      3.로고제작<br>
      4.프로젝트 기획서,<br> 요구사항 정의서 작성<br>
    </td>
    <td align="center">
      1.분석 결과 출력,<br> 분석 사진 출력<br>
      2.프로젝트 기획서,<br> 요구사항 정의서 작성<br>
    </td>
    <td align="center">
      1.TCP/IP 통신,<br> UDP통신,<br> Flask서버 활용 실시간 영상 출력<br>
      2.프로젝트 기획서,<br> 요구사항 정의서 작성<br>
    </td>
    <td align="center">
      1.프로젝트 기획서,<br> 요구사항 정의서 작성<br>
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
  * 회원가입, 로그인 기능의 문제는 없었으나 페이지 이동이 되지 않는 문제점
  * 해결방안 : 기능당 form태그를 각각 지정하여 페이지 이동
* <b>문제2</b>
  * Controller에서는 값이 있느나 jsp에서 값이 안넘어오는 문제점
  * 해결방안 : Spring은 기존에 학습했던 이클립스와 달라 Controller에 @ResponseBody 언급하여 Hash Map 사용, json타입 명시하여 key/value값으로 값 출력
* <b>문제3</b>
  * 이미지를 바이트값으로 바꿔 소켓통신으로 보낼때 jpg를 제외한 확장자는 이미지가 넘어가지 못하는 문제
  * 해결방안 : 확장자를 jpg로 바꿔서 소켓통신으로 보냄
* <b>문제4</b>
  * java와 python을 TCP/IP로 소켓통신시 값이 넘어가지 않는 문제점
  * 해결방안 : 이미지, 문자열 전부 바이트 배열로 변환하여 값을 보냄
* <b>문제5</b>
  * 영상 송수신 socket에서 UDP통신 진행 중 frame drop발생
  * 해결방안 : 20FPS에 못미치는 것으로 확인, pickle 함수 이용하여 직렬화 및 openvcv를 이용한 인코딩 및 디코딩하여 문제 해결
* <b>문제6</b>
  * socket buffer보다 크기가 큰 데이터 전송시 발생하는 문제
  * 해결방안 : 품질을 낮춰도 같은 문제가 발생하여 수신되어지는 frame의 속도가 송신속도보다 느려 socket에 쌓여 overflow발생함을 확인. 해결방안1. 소켓 주기적으로 초기화, 이 방안은 바인드에 걸리는 소요시간을 계산 못함. 해결방안2. 수신부에서 진행한 panoptic을 연산부로 따로 분리하여 영상 수신부에서 interrupt(try except와 timeout속성을 이용하여 지속적으로 영상을 수신하면서 연산결과 도출에 대한 특정신호 대기.)를 받아 1개의 frame을 panoptic연산부로 전송하도록 영상 수신부와 연산부 각각이 별개의 동작을 진행하도록 구조 변경하고 문제 해결
* <b>문제7</b>
  * python의 list변수에서 변경하지 않은 buffer변수가 일정작업이후 변화하는 문제
  * 해결방안 : ex) a=b, b=c가 되어 a가 c로 바뀌어 있음을 확인하여 .copy() 함수를 이용하여 복사하는 방안을 사용하여 문제 해결
* <b>문제8</b>
  * python panoptic 결과 Data Udp 송신 및 JAVA UDP 수신시 결과 DATA의 누락 문제
  * 해결방안 : JAVA UDP 소켓 컨트롤러에서 주기적으로 호출시마다 새로 소켓을 Bind를 진행하는데 해당 Binding마다 소요시간이 존재함. 해당 Binding타이밍에 결과데이터 송신시 결과 DATA누락됨. WAS가 실행되는 초기에 socket 객체에 바인딩을 진행하고 이후에는 바인딩된 객체를 사용할 수 있도록 수정. PostConstruct 어노테이션으로 초기에 소켓바인딩. static메모리에 객체를 올려놓고 사용할 수 있도록 생성하여 문제 해결
* <b>문제9</b>
  * Flask cam 서버에 여러 클라이언트 접근시 기존 client의 연결이 종료되는 문제
  * 해결방안 : opencv의 videocapture가 클라이언트 접근마다 새로 접근하여 capture =cv2.VideoCapture(0)을 다시 호출하는 것이 원인으로 판단. 클라이언트 접근시 capture.read만 다시 호출 할 수 있도록 서버실행시 VideoCapture함수를 1회 실행하도록 코드 구조 변경하여 문제 해결
