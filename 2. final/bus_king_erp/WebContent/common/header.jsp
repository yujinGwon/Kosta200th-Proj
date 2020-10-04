<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BUSKING</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="<c:url value="/resources/css/header.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/home.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/form.css" />" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Gothic+A1|Arimo" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" 
    	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/df-number-format/2.1.6/jquery.number.js"></script>
    <script src="<c:url value="/resources/js/gnb.js" />"></script>
    <script src="<c:url value="/resources/js/aside.js" />"></script>

    <script type="text/javascript">
	 	
    </script>
    
</head>
<body>
    <!-- HEADER -->
    <div class="wrap">
        <header>
             <h1>
             	 <a href="${pageContext.request.contextPath}">
             		<img src="${pageContext.request.contextPath}/resources/img/buskingLogo.png" />
         		 </a>
    		 </h1>
    		 <ul>
    		 	<li>
    		 		<i class="fas fa-user-circle fa-2x" style="vertical-align: middle"></i>
             		<span class="span"> ${sessionScope.dname} <i>${sessionScope.name}</i>님</span>
    		 	</li>
    		 	<li class="logout-li">
    		 		<a href="${pageContext.request.contextPath}/uc/logout.do"
    		 		class="logout">Logout</a>
    		 	</li>
    		 </ul>
    		 
             <nav class="gnb">
                 <a href="${pageContext.request.contextPath}/bc/r-list.do" class="${page && 'activePage'}">
                 	<span class="gnb-name">배차</span>
               	 </a>
                 <a href="${pageContext.request.contextPath}/hc/e-list.do" class="${page && 'activePage'}">
                 	<span class="gnb-name">인사</span>
                 </a>
                 <a href="${pageContext.request.contextPath}/ac/cal-list.do" class="${page && 'activePage'}">
                 	<span class="gnb-name">회계</span>
                 </a>
                 <a href="${pageContext.request.contextPath}/rc/re-list.do" class="${page && 'activePage'}">
                 	<span class="gnb-name">정비</span>
                 </a>
                 <a href="${pageContext.request.contextPath}/ad/acc-list.do" class="${page && 'activePage'}">
                 	<span class="gnb-name">사고∙범칙금</span>
               	 </a>
             </nav>
        </header>
    </div>

