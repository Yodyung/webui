<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	// 작성 버튼이 눌렸을 때
	$('input[value="작성"]').click(function(){
	
		//유효성 검사 submit 되기 전에 항상 넣어주기(공란 입력 불가)
		   if($("input[name='writer']").val() == ""){
			    alert("작성자를 입력해주세요.");
			    $("input[name='writer']").focus();
			    return false;
			} 
			if($("input[name='tltle']").val() == ""){
			    alert("제목을 입력해주세요.");
			    $("input[name='tltle']").focus();
			    return false;
			}
			if($("textarea[name='content']").val() == ""){
			    alert("내용을 입력해주세요.");
			    $("textarea[name='content']").focus();
			    return false;
			}
			if($("input[name='pass']").val() == ""){
			    alert("비밀번호를 입력해주세요.");
			    $("input[name='pass']").focus();
			    return false;
			}
		
		// 폼태그의 action 속성을 'BoardSave.jsp'
		// 폼태그의 submit() 호출
		var frm = $('form[name="frm"]');
		frm.attr('action','BoardSave.jsp');
		frm.submit();
		// 각 input 태그에 name 부여
	});
});
</script>
</head>
 <body>
	<h4> 게시판 글 쓰기 </h4><br/>
	나중에 이쁘게 만드시오 <br/><br/>
	<form name='frm' id="frm" method='get'>
	작성자 : <input type='text' id="writer" name='writer'><br/><br/>
	제  목 : <input type='text' id="title" name='title'><br/><br/>
	내  용 : <textarea rows='10' cols='40' id="content" name='content'></textarea><br/><br/>
	비밀번호 : <input type='password' id="pass" name='pass'></textarea><br/><br/>
	<input type='button' value='작성'>
	<input type='reset' value='취소'>
	</form>

</body>
</html>