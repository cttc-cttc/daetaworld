package kr.co.deataworld.dto;

public class BoardCriteria {

	private int page;// 현재 페이지
	private int perPageNum;// 한페이지에 보여지는 데이터수

//	특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	public BoardCriteria() {
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

	// method for MyBatis SQL Mapper
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
		return "BoardCriteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}

}
