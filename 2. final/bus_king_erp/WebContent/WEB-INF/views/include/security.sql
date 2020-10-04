[Spring 기반의 보안 설정 처리]

-인증과 권한 
-인증 : 로그인해서  로그인 성공
-권한 : 인증된 사용자가 처리할 수 있는 프로세스

1.Spring.io 사이트 방문
2.Security 관련 jar ..... (Maven -> dependency 제공)
<dependencies>
    <dependency>
        <groupId>org.springframework.security</groupId>
        <artifactId>spring-security-web</artifactId>
        <version>3.2.4.RELEASE</version>
    </dependency>
</dependencies>
<dependencies>
    <dependency>
        <groupId>org.springframework.security</groupId>
        <artifactId>spring-security-config</artifactId>
        <version>3.2.4.RELEASE</version>
    </dependency>
</dependencies>

3. 위 보안관련  dependency pom.xml 붙이기

4. 보안관련(Security 설정 xml 만들기
   -security-context.xml 만들기 (공통 빈으로 사용)
**************************************************************   
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:security="http://www.springframework.org/schema/security"
	xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
		http://www.springframework.org/schema/security http://www.springframework.org/schema/security/spring-security.xsd">
</beans>
**************************************************************

5. 사이트 업무(ROLE) 규칙 만들기
현재 사이트
사용자의 인증과 권한 처리 설정

-인증받지 않은 일반사용자
-인증받은 일반사용자
-인증받은 관리자

-게시판 (customer > notice.jsp , noticeReg.jsp , noticeDetail.jsp , noticeEdit.jsp
-게시판 목록(notice.jsp) :  일반사용자(인증 x) : 사이트 접속하는 모든 사용자
-게시판 상세(noticeDetail.jsp) :  일반사용자(인증 0) : 로그인해서 인증을 받은 일반사용자
-게시판 글쓰기(noticeReg.jsp) : 관리자 : 인증받은 일반사용자이면서 관리자 권한을 가지는 사용자

-권한 정의 
ROLE_USER : 인증받은 일반 사용자가 취득하는 롤(권한그룹 : ROEL_Name)
auto-config="true" : 스프링이 정의하는 환경 설정을 그대로 따라 가겠다
                   : 스프링은 로그폼도 별도로 제공
실제로 DB(DAO) 방법으로 처리하는 것이 원칙 (DB연동 전에)
in-memory 방식으로 프로그램에서 계정과 비번을 세팅해서 작업 처리  

*************1단계 TEST CODE****************
<security:http auto-config="true">
		<security:intercept-url pattern="/customer/noticeDetail.htm" access="ROLE_USER"/>
		<security:intercept-url pattern="/customer/noticeReg.htm" access="ROLE_ADMIN"/>
</security:http>
<security:authentication-manager>
    	<security:authentication-provider>
    		<security:user-service>
    			<security:user name="kingsmile" password="kosta" authorities="ROLE_USER"/>
    			<security:user name="admin" password="kosta" authorities="ROLE_ADMIN,ROLE_USER"/>
    		</security:user-service>
    	</security:authentication-provider>
 </security:authentication-manager>
 
 web.xml에서 필터 설정하기
 <!-- 인증권한 관련 Filter -->
   <filter>
   		<filter-name>springSecurityFilterChain</filter-name>
   		<filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
   </filter>
   <filter-mapping>
   		<filter-name>springSecurityFilterChain</filter-name>
   		<url-pattern>/*</url-pattern>
   </filter-mapping>
 
  result => auto-config="true"  인해서  Spring 제공하는 loginForm 으로 이동
  
  
**spring 제공하는 로그인 page 소스  
<html>
	<head><title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>
<p><font color='red'>Your login attempt was not successful, try again.<br/><br/>Reason: Bad credentials</font></p><h3>Login with Username and Password</h3>
	<form name='f' action='/SpringSTS_MVC_Security/j_spring_security_check' method='POST'>
 		<table>
    		<tr><td>User:</td><td><input type='text' name='j_username' value=''></td></tr>
    		<tr><td>Password:</td><td><input type='password' name='j_password'/></td></tr>
    		<tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
  		</table>
	</form>
</body>
</html>
 
*************2단계 TEST CODE****************
1. 로그인 페이지 내가 만들 로그인 페이지로
<security:http>
		<security:form-login login-page="/joinus/login.htm" /> --추가코드
		<security:intercept-url pattern="/customer/noticeDetail.htm" access="ROLE_USER"/>
		<security:intercept-url pattern="/customer/noticeReg.htm" access="ROLE_ADMIN"/>
	</security:http>
2. login.jsp (스프링이 가지는 자동화 인증처리 하기 위해서 코드 변환)
   -action='/SpringSTS_MVC_Security/j_spring_security_check'
   -<input type='text' name='j_username' value=''>
   -<input type='password' name='j_password'/>

3. JSTL통한 form 설정
<!-- 1.. 	<form action="/SpringSTS_MVC_Security/j_spring_security_check" method="post"> -->
<!-- 2..	<form action="<c:url value="/j_spring_security_check"  />" method="post"> -->
		<c:url value="/j_spring_security_check" var="loginURL"></c:url>
		<form action="${loginURL}" method="post">  
4. 현재까지 로그인 실패시 (login.jsp 계속적으로 reload )
   -무었이 잘못되어서 로그인이 안되는지 .....
   -로그인 실패시 처리 구현하기
 <security:form-login login-page="/joinus/login.htm"
	 authentication-failure-url="/joinus/login.htm?error" --추가
		 />    
   -login.jsp 에서 로직처리 ${param.error != null}  제어구문
 loing.jsp 검증코드 추가
       <c:if test="${param.error != null}">
			<div>
				 로그인실패<br>
				 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
				 	이유 : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
				 </c:if>
			</div>
		</c:if>  
   
 5. header.jsp 가지는 login 정보에 대해서 변환
    ->login 성공 => loginout
    ->login 하지 않은 상태라면 => login
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>  추가코드
     
   <c:if test="${empty pageContext.request.userPrincipal}">
				<li><a href="${pageContext.request.contextPath}/joinus/login.htm">로그인</a></li>
	</c:if>
	<c:if test="${not empty pageContext.request.userPrincipal}">
				<li><a href="${pageContext.request.contextPath}/j_spring_security_logout">
				(${pageContext.request.userPrincipal.name})로그아웃</a></li>
	</c:if>
	=> 로그인 과 로그아웃 view 설정하기
	
6. 로그 아웃시 view 설정하기
security-context.xml
<security:http>
		<security:form-login login-page="/joinus/login.htm"
		 authentication-failure-url="/joinus/login.htm?error"  />
		<security:logout logout-success-url="/index.htm" /> 추가 코드
		<security:intercept-url pattern="/customer/noticeDetail.htm" access="ROLE_USER"/>
		<security:intercept-url pattern="/customer/noticeReg.htm" access="ROLE_ADMIN"/>
</security:http>	

7. header.jsp 가지는 jstl - > Security가 제공하는 taglib전환
<%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
<se:authorize ifNotGranted="ROLE_USER">
	<li><a href="${pageContext.request.contextPath}/joinus/login.htm">로그인</a></li>
</se:authorize>
<se:authentication property="name" var="LoingUser" />
<se:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
	<li><a href="${pageContext.request.contextPath}/j_spring_security_logout">
		(${LoingUser})로그아웃</a></li>
</se:authorize>
	
위 코드에 대한 해석
<se:authorize ifNotGranted="ROLE_USER">
					NOT ROLE_USER (로그인한 사용자가 ROLE_USER 그룹이 아니면)
</se:authorize>
<se:authorize ifAllGranted="ROLE_USER , ROLE_ADMIN">
					 ALL -> AND => ROLE_USER and ROLE_ADMIN  (로그인한 사용자 ..둘다 만족)
</se:authorize>
<se:authorize ifAnyGranted="ROLE_USER , ROLE_ADMIN">
					 Any -> OR => ROLE_USER OR ROLE_ADMIN  (로그인한 사용자 ..둘 중에 하나만 만족한다면)
</se:authorize>

8. notice.jsp (글쓰기) 기능을 가지고 있는데
   업무 규칙상 글쓰기는 ROLE_ADMIN 만 허용하겠다
   notice.jsp 코드 수정 및 추가
   <%@ taglib prefix="se" uri="http://www.springframework.org/security/tags" %>
   <se:authorize ifAllGranted="ROLE_USER , ROLE_ADMIN">
		<a class="btn-write button" href="noticeReg.htm">글쓰기</a>
	</se:authorize>

9. noticeReg.jsp (글쓰기 데이터 처리 확인하기) : 글쓴이 처리
    글쓰기 : CustomerController.java .....
   public String noticeReg(Notice n , HttpServletRequest request) 
   
   
   //기존 글쓴이 (보안 인증 처리)
   UserDetails user = (UserDetails)SecurityContextHolder.
				                        getContext().
				                        getAuthentication().
				                        getPrincipal(); //User들의 정보를 가지고 오겠다
	//user.getPassword();
	//user.getUsername(); 
	n.setWriter(user.getUsername().trim());
   
   수정(DAO)
   public int insert( Notice n ) throws ClassNotFoundException, SQLException {
		String sql = "INSERT INTO TNOTICES(SEQ, TITLE, CONTENT, WRITER, REGDATE, HIT, FILESRC , FILESRC2) " +
			"     VALUES( (SELECT MAX(TO_NUMBER(SEQ))+1 FROM TNOTICES), :title, :content, :writer, SYSDATE, 0, :fileSrc , :fileSrc2)";
	
		return getSimpleJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(n));
	
	}

   	위 코드를 조금 더 개선해 보아요
   	
   	public String noticeReg(Notice n , HttpServletRequest request ,Principal principal )
   	추가된 코드 : Principal principal 
   	/* 보안 코드 2단계 코드*/
	n.setWriter(principal.getName());  
   	
 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 in-memory 방식 강제 코드
<security:user name="kingsmile" password="1004" authorities="ROLE_USER"/>
<security:user name="admin" password="1004" authorities="ROLE_ADMIN,ROLE_USER"/> 	
   	
 ***************************************************************************
 위 코드를  JDBC 연동 가능한 형태의 코드로 전환
 
 원칙 : Spring Security 기능을 사용하기 위해서는  Table 설계도 Spring Security 원하는 형태로
     1. 컬럼명 강제하기 : USERID , PASSWORD , ENABLED 
          현재 시스템은 :      ID         PASSWD        x
     2. 속임수 :
        SELECT  ID  AS USERID  ,  passwd AS PASSWORD ,  1 enabled FROM member;  
        사용해야 되는 쿼리는
        SELECT  id  AS USERID  ,  passwd AS PASSWORD ,  1 enabled 
				FROM member  WHERE id='admin';   
		=>
		  SELECT  id  AS USERID  ,  passwd AS PASSWORD ,  1 enabled 
		 		 FROM member2 WHERE id=? ;  
     3.   xml 에서 위 쿼리에서 " 인식 안해요 => " > &quot
          SELECT &quot;UID&quot; AS USERID  ,  pwd AS PASSWORD ,  1 enabled 
		  FROM member2 WHERE &quot;UID&quot;=?;     
  [권장사항]
 user table 
 roll table
 userandroll table 관계
 
 select u.userid, u.password , u.enabled , u.roll_name  
 from user u  join roll r
 on user.userid = roll.userid
 ---------------------------------------------------------------
  select u.id, u.passwd , u.enabled , u.roll_name  
		 from user u  join roll r
 			on user.userid = roll.userid
-------------------------------------------------------------------- 
    4.   SELECT &quot;UID&quot; AS USERID  ,  pwd AS PASSWORD ,  1 enabled  , 'ROLE_USER' ROLL_NAME
		 	FROM member WHERE &quot;UID&quot;=?;     
 
 [ JDBC _2 ] => security-context.xml 코드 수정
 주석처리
 	<!--  DB연결하지 않고 in-memory 처리 	
    			<security:user-service>
    			<security:user name="kingsmile" password="kosta" authorities="ROLE_USER"/>
    			<security:user name="admin" password="kosta" authorities="ROLE_ADMIN,ROLE_USER"/>
    		</security:user-service> 
    	-->
 
수정쿼리
<!-- JDBC 연동코드 -->
    	<security:jdbc-user-service data-source-ref="driverManagerDataSource"
    	 users-by-username-query="SELECT  id  AS USERID  ,  
    	                                             passwd AS PASSWORD ,  
    	                                             1 enabled 
    	                          FROM member  WHERE id=?"
    	 authorities-by-username-query="SELECT  id  AS USERID  ,  
    	                                         'ROLE_USER' AS ROLL_NAME
		                                FROM member  WHERE  id=?"                         
    	/>  
    
 
 quiz) kingsmile 사용자가  ROLE_USER , ROLE_ADMIN
 user    userandroll   roll
           kingsmile ROLE_USER
           kingsmile ROLE_AMDIN
 
 	<!-- 
		JDBC 연도전 파일별로 권한 처리한 코드
		<security:intercept-url pattern="/customer/noticeDetail.htm" access="ROLE_USER"/>
		<security:intercept-url pattern="/customer/noticeReg.htm" access="ROLE_ADMIN"/> 
		
	-->  	
	위 코드를 개선 pattern 방식으로 전환
	
		<!-- 
		Pattern 샘플
		 <security:intercept-url pattern="/customer/*" access="ROLE_USER" /> => customer 폴더 모든 파일
		 <security:intercept-url pattern="/customer/**" access="ROLE_USER" /> => customer 폴더 안의 하위 폴더까지 포함
		 <security:intercept-url pattern="/customer/*.htm" access="ROLE_USER" />  
		 <security:intercept-url pattern="/customer/*Reg.htm" access="ROLE_USER" />
		 aaaReg.htm , bbbb_Reg.htm 적용
		 -->
		<security:intercept-url pattern="/customer/*Reg.htm" access="ROLE_USER" />
		<security:intercept-url pattern="/admin/**" access="ROLE_ADMIN" />


SELECT r.id AS USERID , r.role_name AS ROLL_NAME FROM  member m JOIN roll r
ON r.userid = m.id
WHERE r.id='kingsmile'	  -- simson , bobby, daddy, mommy


CREATE TABLE roll (
	userid VARCHAR2(20),
  Role_name VARCHAR2(30)
);

ROLE_USER , ROLE_ADMIN
INSERT INTO roll VALUES('admin','ROLE_USER');
INSERT INTO roll VALUES('admin','ROLE_ADMIN');

INSERT INTO roll VALUES('simson','ROLE_USER');
COMMIT;

select * from roll;
	
select * from tab;

select * from member;		 -- name, passwd, id

insert into member( no, name, jumin, passwd, id) values(1005, '해피도연', '7712202037926', '123', 'admin');

select * from members;


<!-- JDBC 연동코드 -->
    	<security:jdbc-user-service data-source-ref="driverManagerDataSource"
    	 users-by-username-query="SELECT id AS USERID  ,  
    	                                             paswd AS PASSWORD ,  
    	                                             1 enabled 
    	                          FROM member WHERE id=?"
    	 authorities-by-username-query="SELECT id AS USERID  ,  
    	                                         'ROLE_USER' AS ROLL_NAME
		                                FROM member WHERE id=?"                         
    	/>  
  --------------------------------------------------------------------------------- 	 
  SELECT id AS USERID  ,    'ROLE_USER' AS ROLL_NAME
		                                FROM member WHERE id= 'bobby';
		                                
  SELECT id AS USERID  ,    passwd AS PASSWD ,   1 enabled 
    	                          FROM member WHERE id='bobby' ;
    	                          
 ----------------------------------------------------------------------
   SELECT id AS USERID  ,    'ROLE_USER' AS ROLL_NAME
		                                FROM member WHERE id= 'admin';
		                                
  SELECT id AS USERID  ,    passwd AS PASSWD ,   1 enabled 
    	                          FROM member WHERE id='admin' ;
   	