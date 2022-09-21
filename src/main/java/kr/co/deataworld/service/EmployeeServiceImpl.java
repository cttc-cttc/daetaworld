package kr.co.deataworld.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dao.EmployeeDAO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Inject
	EmployeeDAO dao;
	
	@Override //내 정보 불러오기 (구직자)
	public MemberDTO myInfo() throws Exception {
		return dao.myInfo();
	}


	@Override //내 정보 수정하기 (구직자)
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception {
		return dao.myInfoUpdate(memberDTO);
	}


	@Override //등록된 자기소개서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id) throws Exception {
		return dao.resumeManagement(m_id);
	}


	@Override //선택한 자소서 불러오기
	public ResumeDTO selectResume(int i_number) throws Exception {
		return dao.selectResume(i_number);
	}


	@Override //수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeUpdate(resumeDTO);
	}


	@Override //자소서 삭제
	public int resumeDelete(int i_number) throws Exception {
		return dao.resumeDelete(i_number);
	}


	@Override //자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeRegister(resumeDTO);
	}


	@Override //대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDefault(resumeDTO);
	}


	@Override //대표 자소서 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO) throws Exception {
		return dao.resumeDefaultInit(resumeDTO);
	}
	
	

}
