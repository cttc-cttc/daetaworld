package kr.co.deataworld.dto;

//일반/긴급-페이징처리

public class JobAdsPageMaker {

	private int totalCount;//일반/긴급구인목록 데이터 갯수
	private int startPage;//첫페이지
	private int endPage;//끝 페이지
	private boolean prev;//이전
	private boolean next;//다음
	
	private int displayPageNum = 3;
	
	private JobAdsCriteria cri;
	
	public void setCri(JobAdsCriteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	//페이징 계산할것들
	private void calcData() {
		
		endPage = (int)(Math.ceil(cri.getPage()/
				(double)displayPageNum)*displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount/
			(double)cri.getPerPageNum()	));
		
		if(endPage>tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		
		next = endPage * cri.getPerPageNum() >=totalCount ? false:true;
		
	}
	
	

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public JobAdsCriteria getCri() {
		return cri;
	}

	@Override
	public String toString() {
		return "JobAdsPageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
}
