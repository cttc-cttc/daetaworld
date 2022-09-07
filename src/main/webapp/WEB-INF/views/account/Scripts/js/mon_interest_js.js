function Guin_Opt_Interest_In(mid, tar){

}

//로그인 팝업
function LoginPopup(msg, ptype, mtype) {        
    var mv = (location.protocol == "http:") ? "&mv=notssl" : "&mv=ssl";    
    if (ptype == "n") 
    {
        var g_pop = window.open('/login/login_pop.asp?mtype=' + mtype + mv, 'logpop', 'menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=0,status=0,width=370px,height=433px');
		if(g_pop!=null){
			g_pop.focus();
		}
	}else if(ptype=="a"){
		var g_pop = window.open('/login/login_pop.asp?mtype='+mtype+'&mv=y','logpop','menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=0,status=0,width=370px,height=433px');
		if(g_pop!=null){
			g_pop.focus();
		}
	}else{
		var msgstr = "";
		if(msg!=""){
			msgstr = msg+"\n";
		}
		if(confirm(msgstr+"로그인 하시겠습니까?")){
            var g_pop = window.open('/login/login_pop.asp?mtype=' + mtype + mv,'logpop','menubar=0,toolbar=0,location=0,directories=0,resizable=0,scrollbars=0,status=0,width=370px,height=433px');
			if(g_pop!=null){
				g_pop.focus();
			}
		}
	}
}