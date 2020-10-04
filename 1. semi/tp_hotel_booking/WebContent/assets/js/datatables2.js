// Call the dataTables jQuery plugin
$(document).ready(function () {
  $('#dataTable').DataTable({
	// 페이징 빼기
	"paging": false,
	// 내림차순으로 정렬
	"order": [[ 0, "desc" ]],
    // 표시 건수기능 숨기기
    lengthChange: false,
    // 검색 기능 숨기기
    searching: false,
  });
});
