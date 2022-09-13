package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.util.PageProcess;

public interface AdminDAO {
	// 전체 구직자 수
	public int employeeCnt() throws Exception;
	// 구직자 회원 조회(페이징 처리)
	public List<MemberDTO> employeeList(PageProcess pp) throws Exception;
}
