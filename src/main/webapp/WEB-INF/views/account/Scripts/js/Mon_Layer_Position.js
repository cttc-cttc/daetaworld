var Mon_Layer_Position = function (id, w, h, x, y) {
	if (y == "") {
		($(window).height()<480)?y=$(window).scrollTop()+10:y=parseInt($(window).scrollTop()+($(window).height()-540)/2);
	}
	if(w==""){
		$("#"+id+"").css({
		"top":""+y+"px",
		"left":""+x+"px",
		"position":"absolute",
		"display":"",
		"z-index":"9000"
		});
	}else{
		$("#"+id+"").css({
		"top":""+y+"px",
		"left":""+x+"px",
		"width":""+w+"px",
		"height":""+h+"px",
		"position":"absolute",
		"display":"",
		"z-index":"9000"
		});
	}

}


var fn_Mon_Layer_Position = function(fw, lyid, type) {
	var fix_hearder_h = 210;
	var header_h = $("#header").height();
	var minus_h = 0 //header값 만큼 높이 보정
	if( header_h == null ) header_h = 0;
	if( header_h > 0 ) {
		minus_h = (fix_hearder_h - header_h)
	}

	var w, h, x, y, winwh
	($(window).width()>960)?winwh=(($(window).width()-960)/2):winwh=0;
	switch(type) {
		case "001" :  //풋터 전화 전 확인
			w = "345";    // 가로크기
			h = "175";     // 세로크기
			x = "290";  // x값
			x = Number($("#"+fw+"").offset().left) + $("#"+fw+"").width();
			y = Number($("#"+fw+"").offset().top) - 85    //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "002" :  //온라인 지원의 장점
			w = "280";
			w = "0";
			h = "0";
			x = "383";
			y = Number($("#"+fw+"").offset().top) + 17

			if($("#StepB")) {
				y = y - $("#StepB").offset().top
			}

			break;
		case "105" :  //온라인 지원의 장점 - 전문채용관
			w = "390";
			h = "0";
			x = "200";
			y = Number($("#"+fw+"").offset().top) + 66
			if($("#StepB")) {
				y = y - $("#StepB").offset().top
			}

			break;
		case "004" :  //온라인 지원의 장점 - 상세검색
			w = "390";
			h = "0";
			x = "330";
			y = Number($("#"+fw+"").offset().top) + 16 - header_h;
			break;
		case "003" :  //채용공고 상세보기 최저임급법 레이어
			w = "230";
			h = "0";
			x = "710";
			y = Number($("#"+fw+"").offset().top) + 10  - header_h;
			break;
		case "003_1" :  //채용공고 상세보기 최저임급법 레이어 채용공고 미리보기
			w = "230";
			h = "0";
			x = "530";
			y = Number($("#"+fw+"").offset().top) +24 - 147;
			break;
		case "003_2" :  //채용공고 상세보기 지원제한 구직자 레이어
			w = "";
			h = "";
			x = "505";
			y = Number($("#"+fw+"").offset().top) - 80  - header_h;
			break;
		case "003_3" :  //지원자 관리 구직제한설정
			w = "";
			h = "";
			x = "451";
			y = Number($("#"+fw+"").offset().top) + 19 - header_h
			break;
		case "003_4" :  //지원자 관리 다른 채용정보 보기
			w = "";
			h = "";
			x = "185";
			y = Number($("#"+fw+"").offset().top) + 19 - header_h
			break;
		case "006" :  //공고등록폼 - 업직종 도움말
			w = "360";
			h = "0";
			x = "250";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "007" :  //비회원 등록폼 - 사업자 등록번호
			w = "360";
			h = "0";
			x = "350";
			y = $("#"+fw+"").position().top + $("#"+fw+"").height() ;
			break;
		case "008" :  //공고등록폼 - 키워드
			w = "360";
			h = "0";
			x = "250";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "009" :  //공고등록폼 - 인근지하철
			w = "360";
			h = "0";
			x = "270";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "010" :  //공고등록폼 - 인근대학
			w = "360";
			h = "0";
			x = "260";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "012" :  //공고등록폼 - 급여
			w = "360";
			h = "0";
			x = "240";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "013" :  //공고등록폼 - 모집종료일선택
			w = "";
			h = "180";
			x = "149";
			y = Number($("#"+fw+"").offset().top) + 10 - header_h;

			break;
		case "013_5" :  //공고등록폼 - 모집종료일선택 - iframe
			w = "340";
			h = "170";
			x = "149";
			y = Number($("#"+fw+"").offset().top) + 10 - header_h;
			break;
		case "014" :  //공고등록폼 - 모집종료일선택
			w = "360";
			h = "0";
			x = "70";
			y = Number($("#"+fw+"").offset().top) + 15 - header_h
			break;
		case "015" :  //상품선택 - 키워드 logo
			w = "380";
			h = "70";
			x = "500";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "016" :  //상품선택 - 키워드
			w = "380";
			h = "70";
			x = "390";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "091" :  //상품선택 - 키워드 iframe
			w = "360";
			h = "70";
			x = "390";
			y = Number($("#"+fw+"").offset().top) + 15
			break;

		case "017" :  //상품선택 - 업직종 Grand
			w = "380";
			h = "60";
			x = "315";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "094" :  //상품선택 - 업직종 Grand iframe
			w = "360";
			h = "60";
			x = "315";
			y = Number($("#"+fw+"").offset().top) + 15
			break;

		case "018" :  //상품선택 - 업직종 Focus
			w = "380";
			h = "60";
			x = "315";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "093" :  //상품선택 - 업직종 Focus
			w = "360";
			h = "60";
			x = "315";
			y = Number($("#"+fw+"").offset().top) + 15
			break;

		case "019" :  //상품선택 - 업직종 Special
			w = "380";
			h = "60";
			x = "325";
			y = Number($("#"+fw+"").offset().top) + 15
			break;
		case "092" :  //상품선택 - 업직종 Special iframe
			w = "360";
			h = "60";
			x = "325";
			y = Number($("#"+fw+"").offset().top) + 15
			break;

		case "020" :  //사용가능 충전금 도움말
			w = "360";
			h = "150";
			x = "185";
			y =  Number($("#"+fw+"").offset().top) + 16 - header_h;
			break;
		case "021" :  //유료서비스 history
			w = "585";
			h = "0";
			x = "280";
			//y =  Number($("#"+fw+"").offset().top) + 10 - header_h;
			y =  Number($("#"+fw+"").position().top) + $("#"+fw+"").height();
			break;
		case "022" :  //결제실패
			w = "330";
			h = "20";
			x = "620";
			y =  Number($("#"+fw+"").offset().top)  - header_h;
			break;
		case "023" :  //심사대기
			w = "330";
			h = "20";
			x = "620";
			y =  Number($("#"+fw+"").offset().top) + 14 - header_h;
			break;
		case "024" :  //입금대기
			w = "330";
			h = "20";
			x = "620";
			y =  Number($("#"+fw+"").offset().top) - header_h;
			break;
		case "025" :  //무료등록불가
			w = "330";
			h = "80";
			x = "610";
			y =  Number($("#"+fw+"").offset().top) + 14 - header_h;
			break;
		case "029" :  //지원자 폴더 이동
			w = "0";
			h = "0";
			x = "600";
			y =  Number($("#"+fw+"").offset().top) + 22 -  header_h;
			break;
		case "030" :  //메일 템플릿 관리
			w = "260";
			h = "170";
			x = "375";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "034" :  //이력서 폴더 이동
			w = "0";
			h = "0";
			x = "730";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "036" :  //담당자 정보관리 추가/수정
			w = "0";
			h = "0";
			x = "590";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "037" :  //담당자 정보관리 추가/수정  아이프레임
			w = "360";
			h = "195";
			x = "595";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "038" :  //소멸예정 e-머니 도움말
			w = "330";
			h = "55";
			x = "625";
			y =  Number($("#"+fw+"").offset().top) + 14;
			break;
		case "039" :  //이력서지수
			w = "570";
			h = "515";
			x = "387";
			y =  Number($("#"+fw+"").offset().top) + 14 - header_h;
			break;
		case "040" :  //인재 희망근무조건>업직종 선택>인재키워드 동일
			w = "674";
			h = "0";
			x = "230";
			y = "";
			break;
		case "051" :  //온라인 지원현황 - 메시지 도움말
			w = "350";
			h = "50";
			x = "610";
			y =  Number($("#"+fw+"").offset().top) + 16;
			break;
		case "056" :  //스크랩 폴더관리
			w = "0";
			h = "0";
			x = "700";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "057" :  //스크랩 메모 입력 수정
			w = "0";
			h = "0";
			x = "685";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "059" :  //스크랩 폴더이동
			w = "0";
			h = "0";
			x = "710";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "060" :  //이름변경안내
			w = "0";
			h = "0";
			x = "260";
			y =  Number($("#"+fw+"").offset().top) + 14 - header_h;
			break;
		case "061" :  //닉네임 등록
			w = "0";
			h = "0";
			x = "200";
			y =  Number($("#"+fw+"").offset().top)-55;
			break;
		case "062" :  //개인정보 수정 - 우편번호 검색
			w = "0";
			h = "0";
			x = "262";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "063" :  //회원가입 - 아이디 중복체크
			w = "0";
			h = "0";
			x = "297";
			y = Number($("#"+fw+"").offset().top) + 20;
			break;
		case "064" :  //회원가입 - 비밀번호 작성법
			w = "0";
			h = "0";
			x = "443";
			y = Number($("#"+fw+"").offset().top) + 20;
			break;
		case "065" :  //회원가입 - 우편번호
			w = "0";
			h = "0";
			x = "268";
			y = Number($("#"+fw+"").offset().top) + 20;
			break;
		case "066" :  //불량신고
			w = "350";
			h = "20";
			x = "590";
			y =  Number($("#"+fw+"").position().top) + 14;
			break;
		case "067" :  //개인 - 지역번호
			w = "0";
			h = "0";
			x = "200";
			y =  Number($("#"+fw+"").offset().top) - 50;
			break;
		case "068" :  //기업 - 지역번호
			w = "0";
			h = "0";
			x = "150";
			y =  Number($("#"+fw+"").offset().top) - 50;
			break;
		case "067_1" :  //개인정보수정 - 지역번호 수정
			w = "0";
			h = "0";
			x = "250";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;

		case "069" :  //공고등록, 수정, 재등록등 - 지역번호
			w = "0";
			h = "0";
			x = "150";
			y =  Number($("#"+fw+"").position().top) + 20;
			break;
		case "070" :  //개인 스크랩한 알바정보 자세히 보기 메모
			w = "0";
			h = "0";
			x = "660";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "071" :  //기업 정보 수정 - 지역번호
			w = "0";
			h = "0";
			x = "240";
			y =  Number($("#"+fw+"").position().top) + 20;
			break;
		case "072" :  //기업 스크랩 메모 보기
			w = "0";
			h = "0";
			x = "696";
			y =  Number($("#"+fw+"").position().top) + 55;
			break;
		case "073" :  //기업담당자 정보내 전화번호 기타 레이어
			w = "0";
			h = "0";
			x = "650";
			y =  Number($("#"+fw+"").position().top) + 137;
			break;
		case "074" :  //기업담당자 정보내 전화번호 기타 레이어
			w = "0";
			h = "0";
			x = "650";

			y =  Number($("#"+fw+"").position().top) + 156;
			break;
		case "075" :  //공고등록, 수정, 재등록등 - 지역번호
			w = "0";
			h = "0";
			x = "150";
			y =  Number($("#"+fw+"").position().top) + 42 ;
			break;
		case "076" :  //이력서 자동저장 레이어
			w = "170";
			h = "55";
			x = "470";
			y =  ($(window).height()<480)?y=$(window).scrollTop()+100:y=parseInt($(window).scrollTop()+($(window).height()-540)/2)+200;
			break;
		case "077" :  //2010추석알바 레이어
			w = "360";
			h = "90";
			x = "598";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "078" :  //개인 스크랩알바정보 탭추가 레이어
			w = "360";
			h = "90";
			x = Number($("#"+fw+"").offset().left - winwh - 240);
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "079" :  //맞춤알바정보 근무가능일 설정 레이어
			w = "0";
			h = "0";
			x = "470";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "080" :  //2011 수능이벤트
			w = "600";
			h = "600";
			x = "329";
			y =  Number($("#"+fw+"").offset().top) -430;
			break;
		case "081" :  //스킨에서의 최저시급
			w = "250";
			h = "0";
			x = "557";
			y = Number($("#"+fw+"").offset().top) +24 ;
			break;
		case "082" :  //메모보기 레이어
		//alert((chkbrowser()=="safari")?5:20);
			w = "0";
			h = "0";
			x = "700";
			y = Number($("#"+fw+"").offset().top) + ((chkbrowser()=="safari")?5:20) - header_h-10 ;
			break;
		case "083" :  //개인서비스 홈 휴대폰 번호 인증마크
			w = "0";
			h = "0";
			x = "200";
			y =  Number($("#"+fw+"").offset().top)  - header_h + 16;
			break;
		case "083_1" :  //개인서비스 홈 휴대폰 번호 인증마크
			w = "350";
			h = "120";
			x = "-90";
			y =  "20";
			break;
		case "084" :  //휴대폰 번호 인증마크
			w = "295";
			h = "60";
			x = "580";
			y =  Number($("#"+fw+"").offset().top) +5 - header_h ;
			break;
		case "085" :  //휴대폰 번호 인증마크
			w = "440";
			h = "115";
			x = "440";
			y =  Number($("#"+fw+"").offset().top) + 20 ;
			break;
		case "086" :  //휴대폰 번호 인증마크
			w = "440";
			h = "115";
			x = "310";
			y =  Number($("#"+fw+"").offset().top) + 20 ;
			break;
	    case "087":  //이력서미리보기_휴대폰 번호 인증마크
	        w = "295";
	        h = "60";
	        x = "380";
	        y = Number($("#" + fw + "").offset().top) + 20;
	        break;
	    case "087_5":  //이력서미리보기_휴대폰 번호 인증마크
	        x = "-80";	        
	        break;
		case "088" :  //좌측 전체 레이어
			w = "80";
			h = "500";
			x = "-73"
			y =  "182";
			break;
		case "089" :  //이력서 최저시급
			w = "250";
			h = "0";
			x = "460";
			y = Number($("#"+fw+"").offset().top) +24 - header_h;
			break;
		case "090" :  //알바토크 소셜댓글 안내
			w = "0";
			h = "0";
			x = "590";
			y =  Number($("#"+fw+"").offset().top) + 20 - header_h;
			break;
		case "095" :  //기업 채용기업정보
			w = "0";
			h = "0";
			x = "250";
			y = Number($("#"+fw+"").position().top) + $("#"+fw+"").height() ;
			break;
		case "095_1" :  //기업 채용기업정보 미리보기
			w = "0";
			h = "0";
			x = "50";
			y = Number($("#"+fw+"").position().top) + $("#"+fw+"").height() ;
			break;
		case "096" :  //기업 채용기업정보 등록일 설명
			w = "0";
			h = "0";
			x = "300";
			y = Number($("#"+fw+"").position().top) + $("#"+fw+"").height();
			break;
		case "097" :  //비밀번호 변경캠페인
			w = "0";    // 가로크기
			h = "0";     // 세로크기
			x = "380";  // x값
			y = Number($("#"+fw+"").offset().top) - 230 ;   //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "098" :  //회원탈퇴 기업
			w = "360";    // 가로크기
			h = "72";     // 세로크기
			x = "300";  // x값
			y = Number($("#"+fw+"").offset().top) + 15 ;  //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "099" :  //회원탈퇴 기업 아이프래임
			w = "350";    // 가로크기
			h = "72";     // 세로크기
			x = "300";  // x값
			y = Number($("#"+fw+"").offset().top) + 15   //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "100" :  //실명 인증 회원탈퇴 안내 기업 아이프래임
			w = "350";    // 가로크기
			h = "72";     // 세로크기
			x = "200";  // x값
			y = Number($("#"+fw+"").offset().top) + 15   //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "101" :  //실명 인증 회원탈퇴 안내 기업
			w = "360";    // 가로크기
			h = "72";     // 세로크기
			x = "200";  // x값
			y = Number($("#"+fw+"").offset().top) + 15   //y값   자료를 넣지 않은경우 가운데 정렬을 뜻함
			break;
		case "102" :  //전문채용관평균시급안내
			w = "350";
			h = "70";
			x = "620";
			y = Number($("#"+fw+"").offset().top) + 15 - header_h;
			break;
		case "103" :  //전문채용관평균시급안내 iframe
			w = "330";
			h = "60";
			x = "620";
			y = Number($("#"+fw+"").offset().top) + 15 - header_h;
			break;
		case "104" :  //전문채용관바안내
			w = "370";
			h = "70";
			x = "200";
			y = Number($("#"+fw+"").position().top) + 15;
			break;
		case "106" :  //2011 수능이벤트 현재 추천왕 순위
			w = "271";
			h = "326";
			x = "630";
			y = "0";
			break;
		case "107" :  //2011 수능이벤트 수험표레이어
			w = "600";
			h = "600";
			x = "500";
			y =  Number($("#"+fw+"").offset().top) + 32;
			break;
		case "109" :  //2011 수능이벤트 수험표레이어2
			w = "600";
			h = "600";
			x = "607";
			y =  Number($("#"+fw+"").offset().top) + 60;
			break;
		case "108" :  //2011 수능이벤트 나를 추천한 친구
			w = "310";
			h = "220";
			x = "0";
			y = Number($("#"+fw+"").offset().top) + 60;
			break;
		case "200" :  //2011 수능이벤트 수험표레이어
			w = "600";
			h = "640";
			x = "584";
			y =  Number($("#"+fw+"").offset().top) + 56;
			break;
		case "201" :  //개인정보수정팝업 안심번호레이어
			w = "440";
			h = "150";
			x = "70";
			y =  Number($("#"+fw+"").offset().top) + 17 - header_h+75;
			break;
		case "202" :  //이력서정보 안심번호레이어1
			w = "440";
			h = "150";
			x = "270";
			y =  Number($("#"+fw+"").offset().top) - 60 - header_h+75;
			break;
		case "202_1" :  //이력서정보 안심번호레이어1
			w = "440";
			h = "200";
			x = "0";
			y = "15";
			break;
		case "203" :  //이력서정보 안심번호레이어2
			w = "440";
			h = "150";
			x = "270";
			y =  Number($("#"+fw+"").offset().top) + 50 - header_h+75;
			break;
		case "204" :  //이력서정보 안심번호레이어2
			w = "440";
			h = "150";
			x = "450";
			y =  Number($("#"+fw+"").offset().top) - header_h + 17;
			break;
		case "205" :  //이력서정보 안심번호레이어2
			w = "440";
			h = "150";
			x = "270";
			y =  Number($("#"+fw+"").offset().top) + 17 - header_h;
			break;
		case "206" :  //개인서비스 홈 휴대폰 번호 인증마크(개인정보수정팝업용)
			w = "440";
			h = "115";
			x = "50";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "207" :  //개인 - 지역번호 팝업 /mem/mon_mem_info_pop.asp
			w = "0";
			h = "0";
			x = "100";
			y =  Number($("#"+fw+"").offset().top) + 20;
			break;
		case "208" :  //맞춤알바 sms 휴대폰인증 레이어
			w = "0";
			h = "0";
			x = "300";
			y =  Number($("#"+fw+"").offset().top) + 20  - header_h;
			break;
		case "209" :  //안심번호
			w = "0";
			h = "0";
			x = "300";
			y =  Number($("#"+fw+"").offset().top) - 60;
			break;
		case "210" :  //지원자 폴더 이동
			w = "0";
			h = "0";
			x = "550";
			y =  Number($("#"+fw+"").offset().top) + 20  - header_h;
			break;

		case "211" :  //메모보기
			w = "0";
			h = "0";
			x = "450";
			y =  Number($("#"+fw+"").offset().top) + 20  - header_h;
			break;
		case "212" :  //고용형태
			w = "450";
			h = "0";
			x = "450";
			y =  Number($("#"+fw+"").offset().top) + 10  - header_h;
			break;
		case "213" :  //사용가능 충전금 도움말
			w = "360";
			h = "150";
			x = "620";
			y =  Number($("#"+fw+"").offset().top) + 16 - header_h;
			break;
	}

	//alert(Number($("#"+fw+"").offset().top));
	Mon_Layer_Position(lyid, w, h, x, y);
};

//브라우저 종류 체크  safari, opera, msie, mozilla
var chkbrowser = function() {
	var result = "";
	jQuery.each(jQuery.browser, function(i, val) {
		if (val == true) {
			result = i;
		}
	});
	return result;
}

//fn_Mon_Layer_Position("버튼아이디", "레이어아이디", "057");

//url, name, width, height, scrollbar : 0:없음, 1:있음
var Mon_Popup_Position = function(u,n,w,h,s) {

	var newidth, neheight, scrollstat, newleft, newtop;
	//alert("good");
	 if (Number(window.screen.height)-120 > Number(h)) {   //일반 팝업
		newidth = w;
		neheight = h;
		(s=='0')?scrollstat = "no":scrollstat = "yes";
	} else {
		(s=='0')?	newidth=Number(w)+20:newidth=w;
		neheight = window.screen.height-120;
		scrollstat = "yes";
	}

	if (Number(window.screen.width) < Number(newidth)) {   //팝업조절 필요
		newidth = window.screen.width;
		scrollstat = "yes";
	}

	var g_pop = window.open(u,n,'menubar=0,toolbar=0,location=0,directories=0,resizable=0,	scrollbars='+scrollstat+',status=0,width='+newidth+'px ,height='+neheight+'px');

	if(g_pop=="[object]"){
		g_pop.focus();
	} else if (g_pop == null) {
		alert("팝업차단을 해제해주세요.");
	}
}


//url, name, width, height, scrollbar : 0:없음, 1:있음, left, top
var Mon_Popup_Position2 = function(u,n,w,h,s,l,t) {

	var newidth, neheight, scrollstat, newleft, newtop;
	//alert("good2");
	 if (Number(window.screen.height)-120 > Number(h)) {   //일반 팝업
		newidth = w;
		neheight = h;
		(s=='0')?scrollstat = "no":scrollstat = "yes";
	} else {
		(s=='0')?	newidth=Number(w)+20:newidth=w;
		neheight = window.screen.height-120;
		scrollstat = "yes";
	}

	if (Number(window.screen.width) < Number(newidth)) {   //팝업조절 필요
		newidth = window.screen.width;
		scrollstat = "yes";
	}

	(l!="")?newleft=l:newleft="0";
	(t!="")?newtop=t:newtop="0";

	var g_pop = window.open(u,n,'menubar=0,toolbar=0,location=0,directories=0,resizable=0,	scrollbars='+scrollstat+',status=0,width='+newidth+'px ,height='+neheight+'px, left='+newleft+'px, top='+newtop+'px');

	if(g_pop=="[object]"){
		g_pop.focus();
	} else if (g_pop == null) {
		alert("팝업차단을 해제해주세요.");
	}
}


//url, name, width, height, scrollbar : 0:없음, 1:있음, left, top   //스크롤바 생성여부를 넘겨주는 function  //Map 팝업 띄울시 사용
var Mon_Popup_Position3 = function(u,n,w,h,s,l,t) {

	var newidth, neheight, scrollstat, newleft, newtop;
	//alert("good3");
	 if (Number(window.screen.height)-120 > Number(h)) {   //일반 팝업
		newidth = w;
		neheight = h;
		(s=='0')?scrollstat = "no":scrollstat = "yes";
	} else {
		(s=='0')?	newidth=Number(w)+20:newidth=w;
		neheight = window.screen.height-120;
		scrollstat = "yes";
	}

	if (Number(window.screen.width) < Number(newidth)) {   //팝업조절 필요
		newidth = window.screen.width;
		scrollstat = "yes";
	}

	(l!="")?newleft=l:newleft="0";
	(t!="")?newtop=t:newtop="0";

	if (scrollstat == "yes"){
		var g_pop = window.open(u+"&scrollstat=yes",n,'menubar=0,toolbar=0,location=0,directories=0,resizable=0,	scrollbars='+scrollstat+',status=0,width='+newidth+'px ,height='+neheight+'px, left='+newleft+'px, top='+newtop+'px');
	} else {
		var g_pop = window.open(u,n,'menubar=0,toolbar=0,location=0,directories=0,resizable=0,	scrollbars='+scrollstat+',status=0,width='+newidth+'px ,height='+neheight+'px, left='+newleft+'px, top='+newtop+'px');
	}


	if(g_pop=="[object]"){
		g_pop.focus();
	} else if (g_pop == null) {
		alert("팝업차단을 해제해주세요.");
	}
}