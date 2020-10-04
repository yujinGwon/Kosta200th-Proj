<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/header.jsp" %>
<%@include file="/common/hrSubMenu.jsp" %>
<style type="text/css">
   .form {
      width: 50%;
      margin: 5% 25%;
   }
   .form-con {
      width: 100%;
      margin-top: 50px;
   }
   
   fieldset {
    width: 50%;
   margin: 5% 25%;
}
   
   .form-con select {
    width: 170px;
    margin: 5px 0;
}

   .form-con .btn-wrap {
       position: relative;
      left: 50%;
      margin-left: -100px;
   }
   .left-side {
      float: left;
      margin-left: 60px;
   }
   .right-side {
      position: relative;
      float: right;
      margin-right: 60px;
   }
   .right-side input {
      width: 170px;
   }
   
   .form-con textarea {
      height: 150px;
   }
   
   .form-con input {
    width: 170px;
}

   .form-con .btn-wrap {
      width: 100%;
      position: relative;
      left: 0;
      margin-left: 0;
      bottom: 0;
      background: green;
   }
   .form-con .formBtn {
      position: absolute;
      margin-left: 0;
      margin-top: 5px;
      width: 170px;
      left: 0;
      box-shadow: 0px 0px 10px 0px rgba(96, 173, 94, 0.15);
   }
   .form-con .add {
      margin: 22px 0;
      letter-spacing: 1.3px;
   }
</style>

<body>
   <main>
   <form action="e-update.do" method="post">
   <fieldset>
   <legend style="text-align: center">사원수정</legend>
   <div class="form-con">
      <ul class="left-side">
      
      
         <li>
         <span>사원번호</span>
         <input type="text" value="${dto.e_no}" name="e_no" id="e_no" readonly="readonly">
         </li>
         <li>
         <span>이름</span>
         <input type="text" value="${dto.e_name}" name="e_name" id="e_name" >
         </li>
         <li>
         <span>주민등록번호</span>
         <input type="text" value="${dto.e_jumin}" name="e_jumin" id="e_jumin" >
         </li>
         <%-- <li>
         <span>부서</span><br>
         <select name="e_dname">
         <option selected="selected">${dto.e_dname}</option>
                        <option>인사부</option>
                        <option>총무부</option>
                        <option>운송팀</option>
                        <option>정비과</option>
                     </select>
         </li> --%>
         <li>
         <span>직급</span><br>
         <select name="e_position">
         <option selected="selected">${dto.e_position}</option>
                        <option>사원</option>
                        <option>대리</option>
                        <option>과장</option>
                        <option>차장</option>
                        <option>부장</option>
                     </select>
         </li>   
         <li>
         <span>부서</span><br>         
         <select name="authority">
                        <option>선택하세요</option>
                        <option value="ROLE_ADMIN">관리자</option>
                        <option value="ROLE_HC">인사팀</option>
                        <option value="ROLE_ACD">총무팀</option>
                        <option value="ROLE_BC">배차팀</option>
                        <option value="ROLE_RC">정비팀</option>
                     </select>
         </li>
         <li>
         <span>근로계약서</span><br>
         <select name="e_contract">
         <option selected="selected">${dto.e_contract}</option>
                        <option>작성</option>
                        <option>미작성</option>
                     </select>
         </li>
         <li>
         <span>결혼여부</span><br>
         <select name="e_marriage">
         <option selected="selected">${dto.e_marriage}</option>
                        <option>선택하세요</option>
                        <option>미혼</option>
                        <option>기혼</option>
                     </select>
         </li>
         <li>
         <span>장애여부</span><br>
         <select name="e_disabled">
         <option selected="selected">${dto.e_disabled}</option>
                        <option>비장애</option>
                        <option>장애</option>
                     </select>
         </li>
         <li>
         <span>면허번호</span>
         <input type="text" value="${dto.e_license}" name="e_license" id="e_license" >
         </li>
         <li>
         <span>취미</span>
         <input type="text" value="${dto.e_hobby}" name="e_hobby" >
         </li>
         </ul>
         <ul class="right-side">
         <li>
         <span>특기</span>
         <input type="text" value="${dto.e_speciality}" name="e_speciality" >
         </li>
         <li>
         <span>연락처</span>
         <input type="text" value="${dto.e_phone}" name="e_phone" >
         </li>
         <li>
         <span>비밀번호</span>
         <input type="password" name="e_pwd" >
         </li>
         <li>
         <span>이메일</span>
         <input type="text" value="${dto.e_mail}" name="e_mail" >
         </li>
         <li>
         <span>주소</span>
         <input type="text" value="${dto.e_add}" name="e_add" >
         </li>
         <li>
         <span>운전경력</span>
         <input type="text" value="${dto.e_career}" name="e_career" >
         </li>
         <li>
         <span>남은 휴가일</span>
         <input type="text" value="${dto.e_break}" name="e_break" >
         </li>
         <li>
         <span>입사일</span>
         <input type="date" value="${dto.e_start}" name="e_start" >
         </li>
<%--          <li>
         <span>퇴사일</span>
         <input type="date" value="${dto.e_end}" name="e_end" >
         </li> --%>

                  <li><span style="color: rgb(219, 225, 226)">hidden</span> <input
                     type="button" value="비밀번호 초기화" class="editBtn formBtn add"
                     onclick="location.href='e-resetpwd.do?e_no=${dto.e_no}'">
                  </li>
                  <li><span style="color: rgb(219, 225, 226)">hidden</span> <input
                     type="submit" value="수정" class="editBtn formBtn add"></li>
                  <li>
            <span style="color: rgb(219, 225, 226)">hidden</span>
            <input type="reset" value="취소" class="editBtn formBtn add" onclick="location.href='e-list.do'">
         </li>
         <li>
            <span style="color: rgb(219, 225, 226)">hidden</span>
            <input type="button" value="삭제" class="editBtn formBtn add" onclick="delete_btn('${dto.e_no}')">
         </li>
   </ul>
   </div>
   </fieldset>
</form>
</main>
<script type="text/javascript"> 

function delete_btn(e_no) {
   /* alert(e_no); */
   if(confirm("삭제하시겠습니까?") == true) {
      location.href="e-delete.do?e_no="+e_no;
   }else{
      return;
   }
}



</script>
</body>
</html>