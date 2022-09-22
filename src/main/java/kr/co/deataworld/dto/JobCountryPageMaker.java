package kr.co.deataworld.dto;
//농어촌 페이징처리

public class JobCountryPageMaker {

	private int totalCount1;//농어촌 구인목록 데이터 갯수
	private int startPage1;//첫페이지
	private int endPage1;//끝 페이지
	private boolean prev1;//이전
	private boolean next1;//다음
	
	private int displayPageNum1 = 3;
	
	private JobCountryCriteria cri1;
	
	public void setCri1(JobCountryCriteria cri1) {
		this.cri1 = cri1;
	}
	public void setTotalCount1(int totalCount1) {
		this.totalCount1 = totalCount1;
		calcData1();
	}
	private void calcData1() {
		endPage1 = (int)(Math.ceil(cri1.getPage1()/
				(double)displayPageNum1)*displayPageNum1);
		
		startPage1 = (endPage1 - displayPageNum1) + 1;
		
		int tempEndPage1 = (int)(Math.ceil(totalCount1/
			(double)cri1.getPerPageNum1()	));
		
		if(endPage1>tempEndPage1) {
			endPage1 = tempEndPage1;
		}
		
		prev1 = startPage1 == 1 ? false : true;
		
		next1 = endPage1 * cri1.getPerPageNum1() >=totalCount1 ? false:true;
		
	}
	
	
	
}
