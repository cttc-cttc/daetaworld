package kr.co.deataworld.service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;


public interface EmployeeService {
	//내 정보 불러오기
	public MemberDTO myInfo()throws Exception;
	
	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//등록된 자기소개서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id)throws Exception;
	
	//선택한 자소서 읽기
	public ResumeDTO selectResume(int i_number)throws Exception;
	
	//자소서 수정내용 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 삭제
	public int resumeDelete(int i_number)throws Exception;
	
	//자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 설정
	public int resumeDefault(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO)throws Exception;
}
