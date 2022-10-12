package kr.co.deataworld.dto;
//일반/긴급 페이징처리
public class JobAdsCriteria {

	private int page;// 현재 페이지
	private int perPageNum;// 한페이지에 보여지는 데이터수

//	특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	public JobAdsCriteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;

		} else {

			this.page = page;
		}
	}

	
	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {

		if (perPageNum <= 0 || perPageNum > 100) {
			this.page = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}

	@Override
	public String toString() {
		return "JobAdsCriteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}

}
