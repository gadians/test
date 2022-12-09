<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width">
<title>**********</title> 
<link rel="stylesheet" type="text/css" href="<%=img_root%>/css/common.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$.jbtnlist_action = function(target,btnNum) {
	$(target).closest('.jquery_a').find('.jbtnlist_a').children().removeClass('on').hide().eq(btnNum).addClass('on').fadeIn(100);
	return true;
}
	
$(function(){
	/*Tab*/
	$('.jbtn_a>dd,.jbtn_a>li').bind('focus','click', function() {
		var btnNum = $(this).index();
		$(this).addClass('on').siblings().removeClass('on');
		$.jbtnlist_action(this,btnNum);
		return false;
	});
	/*radio버튼*/
	$('.jbtn_a input:radio').focus(function() {
	/*$('.jbtn_a>input:radio').bind('focus','click', function() {*/
		if($(this).next("label").length > 0){
			var btnNum = $(this).index()/2;
		} else {
			var btnNum = $(this).parent('label').index();
		}
		//alert(btnNum);
		$.jbtnlist_action(this,btnNum);
			return false;
			/*$("#blk-"+$(this).val()).show('slow');*/
	});
});
</script>
</head>
<body>
<div id="wrap">

</div>
</body>
</html>
