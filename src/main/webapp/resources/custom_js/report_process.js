/**
 * 자유/땜빵게시판 글, 자유/땜빵게시판 댓글, 구인공고 글 신고 처리
 */
function report(rCode, rType, bNumber, cNumber, aNumber, mId, rId) {
	let rCodeText = '';
	let rTypeText = '';
	switch(rCode) {
		case 1: rCodeText = '광고';
			break;
		case 2: rCodeText = '비속어 사용';
			break;
		case 3: rCodeText = '분쟁 조장';
			break;
		case 4: rCodeText = '선정적';
			break;
		case 5: rCodeText = '사기 · 도박';
	}
	switch(rType) {
		case 1: case 3: case 5:
			rTypeText = '글';
			break;
		case 2: case 4:
			rTypeText = '댓글';
	}
	if(confirm('해당 '+ rTypeText +'을 신고하시겠습니까?\n사유 : '+ rCodeText)) {
		reportAjax(rCode, rType, bNumber, cNumber, aNumber, mId, rId);
	}
}

// ajax 데이터를 controller에서 Map으로 받기 위한 옵션
function reportAjax(rCode, rType, bNumber, cNumber, aNumber, mId, rId) {
	$.ajax({
		url: '/deataworld/reportProcess',
		data: JSON.stringify({
			"r_code": rCode,
			"r_type": rType,
			"b_number": bNumber,
			"c_number": cNumber,
			"a_number": aNumber,
			"m_id": mId,
			"r_id": rId
		}),
		contentType:"application/json;charset=UTF-8",
		dataType: 'json',
		type: 'post',
		success: function(res) {
			if(res == 1)
				alert('이미 신고하신 글입니다.');
				
			else if(res == 2)
				alert('이미 신고하신 댓글입니다.');
				
			else
				alert('정상적으로 처리 되었습니다.');
		},
		error: function(res) {
			console.log(res);
			console.log('실패');
		} 
	});
}