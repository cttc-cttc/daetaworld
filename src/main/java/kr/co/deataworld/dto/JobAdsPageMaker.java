package kr.co.deataworld.dto;

//일반/긴급-페이징처리

public class JobAdsPageMaker {

private JobAdsCriteria cri;
	
	private int totalCount;//
	
	private int startPage;//시작페이지
	private int endPage;//끝 페이지
	private boolean prev;//이전버튼
	private boolean next;//다음버튼
	
	private int displayPageNum = 3;//화면에 표시되는 버튼 갯수
	
	public JobAdsCriteria getCri() {
		return cri;
	}
	
	public void setCri(JobAdsCriteria cri) {
		this.cri = cri;
	}
	public int getTotalCount() {
		return totalCount;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	//페이징의 버튼들을 생성하는 계산식
	private void calcData() {
		// TODO Auto-generated method stub
		//끝 페이지번호
		endPage = (int)(Math.ceil(cri.getPage()/
				(double)displayPageNum)*displayPageNum);
		//시작 페이지번호
		startPage = (endPage - displayPageNum) + 1;
		if(startPage <=0) startPage = 1;
		
		//마지막 페이지번호
		int tempEndPage = (int)(Math.ceil(totalCount/
			(double)cri.getPerPageNum()	));
		
		if(endPage>tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		
		next = endPage * cri.getPerPageNum() > totalCount ? true:false;
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

	

	

@Override
	public String toString() {
		return "JobAdsPageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
	
}
