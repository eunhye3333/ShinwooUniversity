# SemiProject
## 프로젝트 개요
> 코로나가 장기화되면서 생활의 많은 변화를 가져왔습니다. 저희가 가장 피부로 느낀 변화는 학교의 등교 정지 결정이었습니다.  
그로 인해 대학 도서관의 이용률은 감소하였지만, 통계에 따르면 책 자체에 대한 수요는 증가하였고, 전자책 선호도 또한 코로나 이전에 비해 증가하였다는 것을 알 수 있었습니다.  
따라서 이러한 상황 속에서도 학교의 도서들을 집에서도 이용할 수 있는 서비스의 필요성을 느껴 대학교 전자도서관 ebook 도서 대출 시스템을 기획하였습니다.  
<br>

## 프로젝트 진행 순서
1. 기획  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5302085e-6495-4cd6-b2b0-5c9e3507c2ed/01.%EA%B8%B0%ED%9A%8D%ED%9A%8C%EC%9D%98_%EC%8B%A0%EC%9A%B0%EB%8C%80%ED%95%99%EA%B5%90.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20211224%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211224T021153Z&X-Amz-Expires=86400&X-Amz-Signature=0b4a950204152ed7aad9d9f75f89c8b53631d9e1851aed6ffb47899fa485473c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2201.%25EA%25B8%25B0%25ED%259A%258D%25ED%259A%258C%25EC%259D%2598_%25EC%258B%25A0%25EC%259A%25B0%25EB%258C%2580%25ED%2595%2599%25EA%25B5%2590.pdf%22&x-id=GetObject)
    + 개발 배경 고찰
    + 구현 목표 설정
    + 요구사항 정의서 작성
    + 단위업무 정의서 작성을 통한 요구사항 상세화  
    <br>
    
2. UI 설계  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9dfef356-4f07-49c3-8e71-edb040bba409/02.UI%ED%9A%8C%EC%9D%98_%EC%8B%A0%EC%9A%B0%EB%8C%80%ED%95%99%EA%B5%90.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20211224%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211224T024819Z&X-Amz-Expires=86400&X-Amz-Signature=07831383d025e5e828f987d8c0d2d0cee106c838d58360bf38617a4752c96209&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2202.UI%25ED%259A%258C%25EC%259D%2598_%25EC%258B%25A0%25EC%259A%25B0%25EB%258C%2580%25ED%2595%2599%25EA%25B5%2590.pdf%22&x-id=GetObject)
    + 유스케이스 다이어그램 작성
    + 스토리보드를 통한 화면 구성 설계  
    <br>
3. DB 구축  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9bc3c67b-2be4-44da-b5e6-0a66a418ad4a/03.DB%ED%9A%8C%EC%9D%98_%EC%8B%A0%EC%9A%B0%EB%8C%80%ED%95%99%EA%B5%90.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20211224%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211224T030031Z&X-Amz-Expires=86400&X-Amz-Signature=9746adb31c538e2a7155e6cb52502ba1441fdd416da0241cdde6dc04f008042d&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2203.DB%25ED%259A%258C%25EC%259D%2598_%25EC%258B%25A0%25EC%259A%25B0%25EB%258C%2580%25ED%2595%2599%25EA%25B5%2590.pdf%22&x-id=GetObject)
    + DB 구축을 위한 ERD 설계
    + 테이블 정의서를 통한 ERD 상세화
    <br>

4. 실구현  [:floppy_disk:.pdf](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/a8652ef1-0e97-47c3-831d-5f79e8b50a55/04.%EC%B5%9C%EC%A2%85_%EC%8B%A0%EC%9A%B0%EB%8C%80%ED%95%99%EA%B5%90.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20211224%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211224T031503Z&X-Amz-Expires=86400&X-Amz-Signature=55a481f507945484ae964d0a910f434a91716291f9c0c88a29d1ba40b30aac5e&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%2204.%25EC%25B5%259C%25EC%25A2%2585_%25EC%258B%25A0%25EC%259A%25B0%25EB%258C%2580%25ED%2595%2599%25EA%25B5%2590.pdf%22&x-id=GetObject)
<br>

## 구현 기능
### [비회원]
-------------
+ 도서 검색
+ 독후감 조회
<br>

### [회원]
-------------
+ 로그인
+ 임시 비밀번호 발급
+ 마이 페이지
+ 도서 대출
+ 도서 반납
+ 도서 신청
+ 독후감 작성
+ 1:1 문의
<br>

### [관리자]
-------------
+ 도서 등록
+ 신청 도서 관리
+ 1:1 문의 관리
+ 전체 도서 관리
+ 회원 관리
<br>

## 사용 기술 및 개발 환경
```
Server : Apache Tomcat 9.0
Database : Oracle 18c
Development Tool : Eclipse 4.15.0, sqlDeveloper version 21.2.1
Development Language :  JAVA , HTML5, CSS3, JavaScript, jQuery, SQL, JSP, Servlet
Team Coop : Github, Sourcetree, ERDCloud, kakaoOven
Open API : Kakao 검색 API, Kakao Map API, Daum 주소 API
```
