package kr.co.deataworld.dto;

public class BoardPageMaker {

	private int totalCount;//자유+땜빵 데이터 갯수
	private int startPage;//첫페이지
	private int endPage;//끝 페이지
	private boolean prev;//이전
	private boolean next;//다음
	
	private int displayPageNum = 3;//화면에 표시되는 페이지 갯수
	
	private BoardCriteria cri;
	
	public void setCri(BoardCriteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	//페이징 계산처리
	private void calcData() {
		// TODO Auto-generated method stub
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

	public BoardCriteria getCri() {
		return cri;
	}

	@Override
	public String toString() {
		return "BoardPageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", cri=" + cri + "]";
	}
	
	
	
}
