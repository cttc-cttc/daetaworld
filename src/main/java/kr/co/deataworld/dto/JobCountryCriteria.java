package kr.co.deataworld.dto;

public class JobCountryCriteria {

	private int page1;//현재 페이지
	private int perPageNum1;//현재 화면에서 보여지는 데이터 갯수
	
	public JobCountryCriteria() {
		this.page1 = 1;
		this.perPageNum1 = 10;
	}
	
	public void setPage1(int page1) {
		if(page1<=0) {
			this.page1 = 1;
			return;
		}
		this.page1 = page1;
	}
	
	public void setPerPageNum1(int perPageNum1) {
		
		if(perPageNum1 <=0 || perPageNum1>100) {
			this.page1 = 10;
			return;
		}
		this.perPageNum1 = perPageNum1;
	}
	public int getPage1() {
		return page1;
	}
	
	//method for MyBatis SQL Mapper
	public int getPageStart1() {
		return(this.page1-1)*perPageNum1;
	}
	
	//method for MyBatis SQL Mapper
	public int getPerPageNum1() {
		return this.perPageNum1;
	}

	@Override
	public String toString() {
		return "JobCountryCriteria [page1=" + page1 + ", perPageNum1=" + perPageNum1 + "]";
	}

	
}
