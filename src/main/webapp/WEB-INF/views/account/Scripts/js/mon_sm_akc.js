var akc_view_stat = true;
// 시간에 따른 식별자
var akc_timeid = null;
var akc_init = true;

$(document).ready(function() {

    $("#wrap").click(function (e) {
		akc_hide();
	});
	$("#Key_Word").keydown(function(event){
		$("#Key_Word").css("background-image","");
	}).mousedown(function(){
		$("#Key_Word").css("background-image","");
	})

    $("#AKCKwd").keydown(function (event) {
        $("#AKCKwd").css("background-image", "");
        ack_keypdown(event);
    }).mousedown(function () {
        $("#AKCKwd").css("background-image", "");
        akc_show();
    }).blur(function (e) {
        var target = e.relatedTarget;
        if (target === null) {
            target = document.activeElement;
        }

        if (typeof target == "undefined") {
            akc_hide();
        } else {
            var targetID = $(target).attr("id");
            if (targetID.indexOf("AKCDiv") < 0 && targetID.indexOf("akc_link") < 0 && targetID.indexOf("ack_r_off") < 0) {
                akc_hide();
            }
        }
	}).click(function(e) {
		$("#AKCKwd").css("background-image","");
			
		if($("#AKCDiv").html() == "" && akc_init){
			akc_search();
		} else {
			akc_show();
		}
		return false;
	});

    $("#AKCDiv").click(function (e) {
		//alert();
		$("#AKCKwd").focus();
		return false;
	}).blur(function(e){
		
		var next_focus = $("*:focus").attr("id");
		if(typeof next_focus == "undefined"){
			akc_hide();
		} else {
			if(next_focus.indexOf("AKCKwd") < 0 && next_focus.indexOf("AKCDiv") < 0 && next_focus.indexOf("akc_link") < 0 && next_focus.indexOf("ack_r_off") < 0) {
				akc_hide();
			}
		}
		
	}).keydown(function(event){
		ack_keypdown(event);
	});
});


function akc_off(){
	akc_view_stat = false;
	akc_hide();
}

var akc_prv_query = "";
function akc_search(){
	if($("#AKCKwd").val() != "" && akc_view_stat) {
		if(akc_prv_query.split(" ").join("") != $("#AKCKwd").val().split(" ").join("")){
			akc_init = false;
			akc_prv_query = $("#AKCKwd").val();
			$.ajax({
			    url: '/api/docruzer/Get-AutoCompleteKeywords?keyword=' + encodeURIComponent($("#AKCKwd").val()) + "&type=html",
			    //url: '/sm/sm_syn_akc.asp?q=' + escape($("#AKCKwd").val()),
				success:function(response, status, request){
					//alert("aa code="+request.status+", message="+request.responseText)
					if(response == ""){						
						akc_hide();
					} else {
						$("#AKCDiv").html(response);
						akc_show();
					}
				},
				error:function (request,status,error){
					//alert("bb code="+request.status+", message="+request.responseText);
					
					akc_hide();
				}
			});
		}
	} else {
		akc_hide();
	}
}

function akc_r_click(no, var1){
    akc_clear_interval();
    
	$("#AKCKwd").val(var1);
    //location.href="/sm/sm_syn_list.asp?smtext="+ escape(var1);
	try {
		GA_Event('공통_PC', '검색', '자동완성_' + var1);
	} catch (e) {
		console.error(e);
    }
	location.href = "/search?Keyword=" + encodeURIComponent(var1);
}
function akc_show(){
	if($("#AKCKwd").val() != "" && $("#AKCDiv").html() != "" && akc_view_stat){
		$("#AKCDiv").removeClass("hide");
		akc_set_interval();
	}
}
function akc_hide(){
	if($("#AKCDiv").hasClass("hide") == false){
		akc_clear_interval();
		$("#AKCDiv").addClass("hide");
	}
}

// 시간 설정
function akc_set_interval() {
	if(akc_timeid == null) {
		akc_timeid = window.setInterval("akc_search()", 100);
	}
}

// 시간 해제
function akc_clear_interval() {
	window.clearInterval(akc_timeid);
	akc_timeid = null;
}

function akc_move(m_type, e_type){
	if($("#AKCDiv").hasClass("hide") == false){
		var max_no = 0;
		var max_obj = $("#AKCDiv li:last").attr("id")

		var row_height = $("#AKCDiv li:last").height() + 4;	//padding 2

		if(typeof max_obj != "undefined"){
			if(max_obj.indexOf("akc_r_") >= 0){
				var max_val = max_obj.replace(/akc_r_/gi,"");
				var max_no = parseInt(max_val);
			}
		}

		var old_no = -1;
		var old_obj = $("#AKCDiv .hover").attr("id");
		if(typeof old_obj != "undefined"){
			if(old_obj.indexOf("akc_r_") >= 0){
				var old_val = old_obj.replace(/akc_r_/gi,"");
					old_no = parseInt(old_val);
			}
		}

		var move_able = true;

		if(m_type == "up"){
			new_no = old_no - 1;
			if(new_no < 0){
				new_no = 0;
				move_able = false;
			}
		} else {
			new_no = old_no + 1;
			if(new_no > max_no){
				new_no = max_no;
				move_able = false;
			}
		}

		if(move_able){
			$("#akc_r_" + old_no).removeClass("hover");
			$("#akc_r_" + new_no).addClass("hover");
			$("#AKCDiv ul").scrollTop(new_no * row_height);
			$("#AKCKwd").val($("#akc_link_" + new_no).attr("title"));
			
		}
	}
}


function ack_keypdown(event){
	switch (event.keyCode) {
		case 9 : { // tab
			
			akc_clear_interval();
			if (event.shiftKey) { // shift + tab
				akc_move('up','1');
			} else {
				akc_move('down','1');
			}
			break;
		}
		case 13:					// <Enter>
			akc_clear_interval();
			akc_hide();
			break;
		case 16 : break; // shift
		case 38 : { // up arrow
			akc_clear_interval();
			akc_move('up','0');
			break; 
		}
		case 40 : { // down arrow
			akc_clear_interval();
			akc_move('down','0');
			break; 
		}
		case 27 : { // esc
			akc_clear_interval();
			akc_hide();

			break;
		}
		default : {
			akc_set_interval();
			return false;
		}
	}
	return false;
}

function akc_trim(str) {

	str = str.replace(/^ +/g, "");
	str = str.replace(/ +$/g, " ");
	str = str.replace(/ +/g, " ");

	return str;
}