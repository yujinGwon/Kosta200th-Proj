<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
    <script type="text/javascript">
        function join() {
            location.href = "${pageContext.request.contextPath}/uc/join.do";
        }
    </script>
</head>

<body>
   
   <div class="wrap">
       
      <div class="left-side">
        <div class="left-con">
            <div><img src="${pageContext.request.contextPath}/resources/img/loginLogo.png" alt=""></div>
            <h1>BUSKING</h1>
            <span>
                <!--Getting you everywhere <br>
                you want to go in Seoul-->
                Connecting people, places and parcels.
                <br>Ride it. Ship it. Bus it.
                <br>Your bus ride!
            </span>
        </div>
      </div>
       
        <div class="right-side">
            <div class="right-con">
                <h2>LOGIN</h2>
                <form action="/bus_king_erp/uc/login_check.do" method="post">
                    <table>
                        <tr>
                            <td class="title">ID</td>
                        </tr>
                        <tr>
                            <td><input name="e_no" class="e_no"></td>
                        </tr>
                        <tr>
                            <td class="title pwd">PWD</td>
                        </tr>
                        <tr>
                            <td><input type="password" name="e_pwd" class="e_pwd"> </td>
                        </tr>
                        <tr>
                            <td class="tcRight"><input name="_spring_security_remember_me" type="checkbox" class="tcRight-input">Auto-login</td>
                        </tr>
                        <tr>
                            <%-- <td class="errMsg" style="font-size: 12px">
                                <span>${errMsg}</span>
                            </td> --%>
                            <c:if test="${errMsg != '아이디 또는 비밀번호가 일치하지 않습니다.'}">
                            	<td><span style="color: #eee">no error message</span></td>
                            </c:if>
                            <c:if test="${errMsg == '아이디 또는 비밀번호가 일치하지 않습니다.'}">
                            	<td class="errMsg"><span>${errMsg}</span></td>
                            </c:if>
                        </tr>
                        <tr>
                            <td align="center" class="loginBtn-td">
                                <input type="submit" value="로그인" class="loginBtn"> 
                                <!-- <input type="button" value="회원가입" onclick="join()" class="loginBtn"> -->
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
   </div>

</body>
</html>
