<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<a href="javascript:shareTwitter();">
	<img src="https://cdn-icons-png.flaticon.com/512/124/124021.png">
</a>
<script>
function shareTwitter() {
    var sendText = "개발새발"; // 전달할 텍스트
    var sendUrl = "devpad.tistory.com/"; // 전달할 URL
    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl,
    		"_blank", "width=500, height=500");
}
</script>