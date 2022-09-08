package kr.co.deataworld.util;

public class PageProcess {
	private int currPage; // 현재 페이지
	private int pagePerList; // 한 페이지에 보여줄 글 수
	private int pagePerNavi; // 페이지 네비게이터에 표시할 페이지 수
	private int boardCnt; // 전체 게시글 수
	
	public PageProcess() {}
	public PageProcess(int currPage, int pagePerList, int pagePerNavi, int boardCnt) {
		this.currPage = currPage;
		this.pagePerList = pagePerList;
		this.pagePerNavi = pagePerNavi;
		this.boardCnt = boardCnt;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPagePerList() {
		return pagePerList;
	}

	public void setPagePerList(int pagePerList) {
		this.pagePerList = pagePerList;
	}

	public int getPagePerNavi() {
		return pagePerNavi;
	}

	public void setPagePerNavi(int pagePerNavi) {
		this.pagePerNavi = pagePerNavi;
	}

	public int getBoardCnt() {
		return boardCnt;
	}

	public void setBoardCnt(int boardCnt) {
		this.boardCnt = boardCnt;
	}

	@Override
	public String toString() {
		return "PageProcess [currPage=" + currPage + ", pagePerList=" + pagePerList + ", pagePerNavi=" + pagePerNavi
				+ ", boardCnt=" + boardCnt + "]";
	}
	
	public int calcLastPage() {
		// 전체 게시글 수 / 페이지 네비게이터 수, 소수점이 있다면 추가 페이지에 마저 표시해야 하므로 올림
		return (int) Math.ceil((double)boardCnt / pagePerList);
	}
	
	public int getPageStart() {
		// DB에서 검색할 현재 페이지의 시작 레코드
		return (currPage-1) * pagePerList;
	}
	
	// 페이지 범위 계산
	public int[] calcPageRange() {
		int[] range;
		int lastPage = calcLastPage();
		// pagePerNavi가 10일 때 현재 페이지가 4면 1, 현재 페이지가 7이면 1, 현재 페이지가 14면 11, 현재 페이지가 26이면 21 ..
		int startNavNum = (currPage-1) / pagePerNavi * pagePerNavi + 1;
		
		// startNavNum + pagePerNavi - 1이 마지막 페이지를 넘어간다면 페이지 네비게이터를 pagePerNavi 만큼 표시하지 않음
		if(startNavNum + pagePerNavi - 1 > lastPage)
			range = new int[lastPage - startNavNum + 1];
		else
			range = new int[pagePerNavi];
		
		// 표시하기로 정한 페이지 네비게이터 수만큼 범위 설정
		for(int i=0; i<range.length; i++) {
			range[i] = startNavNum + i;
		}
		return range;
	}
}
