function boardCheck() {
	if(document.frm.d_u_name.value.length == 0) {
		alert('작성자를 입력하세요.');
		frm.d_u_name.focus();
		return false;
	}
	if(document.frm.d_pass.value.length == 0) {
		alert('비밀번호를 입력하세요.');
		frm.d_pass.focus();
		return false;
	}
	if(document.frm.d_title.value.length == 0) {
		alert('제목을 입력하세요.');
		frm.d_title.focus();
		return false;
	}
	return true;
	if(document.frm.d_content.value.length == 0) {
		alert('내용을 입력하세요.');
		frm.d_content.focus();
		return false;
	}
	return true;
}

function passCheck() {
	if(document.frm.d_pass.value.length == 0){
		alert('비밀번호를 입력하세요.');
		frm.d_pass.focus();
		return false;
	}
	return true;
}