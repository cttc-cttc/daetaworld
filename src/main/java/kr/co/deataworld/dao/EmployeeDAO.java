package kr.co.deataworld.dao;

import java.util.List;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;

public interface EmployeeDAO {
	//내 정보 불러오기
	public MemberDTO myInfo()throws Exception;

	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id)throws Exception;
	
	//선택한 자소서 불러오기
	public ResumeDTO selectResume(int i_number)throws Exception;
	
	//수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO)throws Exception;

	//자소서 삭제
	public int resumeDelete(int i_number)throws Exception;
	
	//자소서 저장
	public int resumeRegister(ResumeDTO resumeDTO)throws Exception;
	
	//대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(int s_number)throws Exception;

	//대타신청
	public int jobApply(int a_number)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyIntro()throws Exception;
	
	//신청한 공고내역을 불러온다
	public List<JobAdsDTO> pinchHistory()throws Exception;
	
	
//	//대타내역 불러오기
//	public List<JobAdsDTO> pinchHistory()throws Exception;
//	
//	//대타내역 가게명 불러오기
//	public String shopName(int s_number)throws Exception;
	
	
	
}
