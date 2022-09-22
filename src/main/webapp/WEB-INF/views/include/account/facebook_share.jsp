<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<a href="javascript:shareFacebook();">
	<img src="https://kr.seaicons.com/wp-content/uploads/2016/03/facebook-icon-26.png" >
</a>
<script>
function shareFacebook() {
    var sendUrl = "devpad.tistory.com/"; // 전달할 URL
    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl,
    		"_blank", "width=500, height=500");
}
</script>