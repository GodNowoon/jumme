# JUMME - 우리FIS 아카데미 근처 식당 리스트
점심을 뭘 먹을지 고민하는 클라우드 엔지니어링 5기 여러분들을 위해 만들었습니다.

## 🌟프로젝트 개요

### 👥구성원
<table>
  <tr>
    <td align="center">
       <a href="https://github.com/GodNowoon">
        <img src="https://github.com/GodNowoon.png" width="100px;" alt="godnowoon"/><br />
        <sub><b>이노운</b></sub>
      </a>
    </td>
    <td align="center">
      <a href="https://github.com/2jeong2">
        <img src="https://github.com/2jeong2.png" width="100px;" alt="2jeong2"/><br />
        <sub><b>이정이</b></sub>
      </a>
    </td>
<td align="center">
      <a href="https://github.com/jihwan77">
        <img src="https://github.com/jihwan77.png" width="100px;" alt="jihwan77"/><br />
        <sub><b>황지환</b></sub>
      </a>
    </td
  </tr>
</table>
<hr>

### 주제
우리FIS 아카데미 5기 학생들이 공유하고 있는 근처 맛집 추천리스트를 보고 영감을 얻어 만든
<br> 아카데미 근처 식당을 카테고리별로 소개하는 웹페이지입니다.

---

## ⚙ 사용 기술 (Tech Stack)

- **JDK 17**
- **Oracle**
- **JPA**
- **그 외 html, css 등 프론트엔드단의 언어**

---

## 🛠 사용 툴 (Tool)

- VS Code / Eclipse
- DBeaver
- Git / GitHub (프로젝트 공유)
- Notion (협업용)

---

## 📌 프로젝트 설명 (Project Description)
구글 스프레드시트로 공유하고 있는[근처 맛집 추천리스트]에 식당들을 더 추가해서 csv 파일로 저장하였습니다. 이를 Oracle 기반 SQL query 하여 식당들
홈페이지에서는 식당의 종류(한식, 일식 등)에 따른 버튼들이 표시되어있어 해당

---

## ✅ 구현 기능 (Implemented Features)

- [o] 식당 전체 리스트 출력
- [o] 메뉴 항목별 리스트 출력
- [x] 식당 소개글 CRUD
- [x] 웹페이지 배포

---

## 🐞 트러블슈팅 (Troubleshooting)

| 문제 상황 | 원인 | 해결 방법 |
|-----------|------|-----------|
| DB의 정보를 제대로 받아오지 못함 | 링크 오류 | SQL에서 쓰이는 컬럼명과 java servlet에서 쓰이는 항목명을 동일하게 구성|
| CORS 오류 발생 | 백엔드 설정 미비 | Spring Security에서 CORS 설정 추가 |

---

## 🧠 회고 (Retrospective)

- **노운**: 맛집리스트를 보면서 점심에 어디 가서 먹을지를 매일매일 고민했었습니다. 관심사에 기반한 프로젝트를 한번 만들어보고 싶었는데, 유능한 팀원들 덕분에 막연히 생각만 하던 프로젝트를 실제로 재밌게 구현해본 것 같습니다. 이 항목을 빌려 짧은 시간에 고생 많이 한 팀원들에게 고마움을 전합니다.
- **정이**: 각자 회고 쓰세용
- **지환**: 각자 회고 쓰세용

---

## 📷 스크린샷

> 프로젝트 주요 화면을 캡처해서 아래에 첨부해 주세요

![screenshot](./images/main.png)

---

## 📂 프로젝트 구조

```bash
├── java
│   ├── controller/Controller.java
│   ├── entity/Jumme.java
│   ├── DBUtil/java
│   └── ...
├── webapp
│   ├── mainpage.html
│   ├── home.html
│   ├── show.jsp
│   └── ...
└── README.md

## 😍 향후 확장 가능성
- 웹 프로젝트를 실제 도메인에 연동하여 배포
- 식당 리스트를 별점별로 정렬해서 제시
- 지도에 매핑하여 시각화

---
