//즐겨찾기
function bookmark(oem_no) {
    var strTitle = "";
    switch (oem_no) {
        case "241": strTitle = "부산 알바몬(051.albamon.com)"; break;
        case "242": strTitle = "대전 알바몬(042.albamon.com)"; break;
        case "243": strTitle = "대구 알바몬(053.albamon.com)"; break;
        case "244": strTitle = "광주 알바몬(062.albamon.com)"; break;
        case "245": strTitle = "울산 알바몬(052.albamon.com)"; break;
        case "246": strTitle = "인천 알바몬(032.albamon.com)"; break;
        default: strTitle = "알바몬(albamon.com)";
    }
    strTitle = strTitle + " - 잡코리아가 만든 아르바이트 No.1 알바몬";

    var url = "http://www.albamon.com/";
    //타겟 페이지 사용안함
    //albamontargetURL.location.href  = "/service/mon_mainlink_chk.asp";

    var a = navigator.userAgent;

    if (a.indexOf('MSIE') >= 0 || a.indexOf('Trident') >= 0) {
        if (typeof window.sidebar != "undefined") { // FF
            window.sidebar.addPanel(document.title, self.location, "");
        } else if (typeof window.external != "undefined") { // IE
            window.external.AddFavorite(url, strTitle);
        }
    } else {
        alert("Ctrl+D 키를 눌러 즐겨찾기에 추가할 수 있습니다.");
    }
    return false;
}

//메인링크
function goMainLoc(url,gubun,val) {
	if (gubun == undefined || gubun == "undefined")
	{
		gubun = "";
	}
	if (val == undefined || val == "undefined")
	{
		val = "";
	}
	if (gubun != "" && gubun != "new")
	{
		document.getElementById("albamontargetURL").contentWindow.location.href  = "/service/mon_mainlink_chk.asp?gubun="+gubun+"&amp;chk="+escape(url);
	}
	if (val == "new" || gubun == "new")
	{
		window2 = window.open(url);
		window2.focus();
	}
	else {
		top.location.href = url;
	}
}

//글로벌 탑 로그인 버튼 링크
function goMainLocLogin(url, qr) {
    var path = location.pathname.toLowerCase();
    var moveChk = "";
    

    if (path == '/' || path == '/main' || path == '/main/home' || path == '/main/local') {
        if (location.protocol.substring(0, 5) == 'https') {
            moveChk = 'main';
        }
    } else {
        moveChk = (location.protocol == "http:") ? "notssl" : "ssl";    
    }


    var g_pop = window.open('/login/login_pop.asp?mtype=' + qr + '&mv=' + moveChk,'logpop','menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=0,status=0,width=370,height=500');
	if(g_pop=="[object]"){
		g_pop.focus();
	}
}

function goMainLocLoginOEM(url,qr) {
    var g_pop = window.open('/login/login_pop.asp?mv=heroes', 'logpop', 'menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=0,status=0,width=370,height=500');
	if(g_pop=="[object]"){
		g_pop.focus();
	}
}

function new_popup_loc(a,b,c, gubun){

	albamontargetURL.location.href  = "/service/mon_mainlink_chk.asp?gubun="+gubun+"&chk="+escape(a);

	today = new Date()
	var win_name = "popDialog" + today.getTime()
	OpenWin = window.open( a ,win_name,"toolbar=no,location=no,directories=no,status=no,scrollbars=no,menubar=no,width=" + b + ",height=" + c );
}

//시작페이지
function base_add() {
	albamontargetURL.location.href  = "/service/mon_mainlink_chk.asp";
}

function swinPop(u,n,w,h,s){
	var g_pop = window.open(u,n,'menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars='+s+',status=0,width='+w+',height='+h);
	g_pop.focus();
}