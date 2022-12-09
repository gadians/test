<%
	img_root = "/image_server"
	
	' 실제 서비스 적용시  img_root = "http://image.gojls.com/[Site Name]"
	' 작업할때는 편하게 하기위해 렌덤함수로 처리
	Randomize 
	validCode = Int(Rnd*100000000)


	' 실제 서비스로 적용될 때는 수정되는 날의 업데이트 날짜를 적용하여 강제 배포 실시
	'validCode = "2008-05-29"
%>