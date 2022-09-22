package kr.co.deataworld.dto;
//일반/긴급 페이징처리
public class JobAdsCriteria {

	private int page;//현재 페이지
	private int perPageNum;//한페이지에 보여지는 데이터수
	
	public JobAdsCriteria() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public void setPage(int page) {
		if(page<=0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		
		if(perPageNum <=0 || perPageNum>100) {
			this.page = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	public int getPage() {
		return page;
	}
	
	//method for MyBatis SQL Mapper
	public int getPageStart() {
		return(this.page-1)*perPageNum;
	}
	
	//method for MyBatis SQL Mapper
	public int getPerPageNum() {
		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "JobAdsCriteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
}
