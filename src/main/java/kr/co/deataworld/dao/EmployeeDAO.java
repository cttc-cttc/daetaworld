package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;

public interface EmployeeDAO {
	//내 정보 불러오기
	public Map<String, Object> myInfo(String m_id)throws Exception;

	//내 정보 수정하기
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception;
	
	//등록된 자소서 목록 불러오기
	public List<ResumeDTO> resumeManagement(String m_id)throws Exception;
	
	//선택한 자소서 불러오기
	public ResumeDTO selectResume(Map<String, Object> map)throws Exception;
	
	//수정한 자소서 저장 ajax
	public int resumeUpdate(ResumeDTO resumeDTO)throws Exception;

	//자소서 삭제
	public int resumeDelete(ResumeDTO resumeDTO)throws Exception;
	
	//등록된 자소서가 있는지 검색
	public List<Map<String, Object>> resumeChk(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 작성 > 등록된 자소서가 없으면 대표자소서로 설정해준다
	public int resumeRegister_1(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 저장 ajax
	public int resumeRegister(ResumeDTO resumeDTO)throws Exception;
	
	//대표 자소서 설정
	public int resumeDefault(ResumeDTO resumeDTO)throws Exception;
	
	//자소서 대표 초기화
	public int resumeDefaultInit(ResumeDTO resumeDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyCheck(Map<String, Object> chk)throws Exception;
	
	//대타 신청 전 자소서가 있나 체크
	public Map<String, Object> introChk(JobApplyDTO jobapplyDTO)throws Exception;
	
	//대타신청
	public int jobApply(JobApplyDTO jobapplyDTO)throws Exception;
	
	// 공고 디테일 접속시 m_id와 s_number(공고번호) 를 이용해 이미 지원한 공고인지 확인
	public int applyIntro(JobApplyDTO jobapplyDTO)throws Exception;
	
	//신청한 공고내역을 불러온다
	public List<Map> pinchHistory(String m_id)throws Exception;
	
	//대타내역 불러오기
	public List<Map> pinchStatus(String m_id)throws Exception;

	//종료된(완료한) 공고목록 불러오기
	public List<Map> pinchExpired(String m_id)throws Exception;
	
	//주변노예검색을 통해 요청받은 목록 불러오기
	public List<Map> requests(String m_id)throws Exception;
	
	//요청받은 공고 상세정보 보기
	public Map<String, Object> requestList(Map<String, Object> map)throws Exception;
	
	//요청받은 공고 수락
	public int requestYes(JobApplyDTO jobApplyDTO)throws Exception;
	
	//요청받은 공고 거절
	public int requestNo(JobApplyDTO jobApplyDTO) throws Exception; 
	
	//완료한 공고 '확인'버튼 클릭시 상태를 변경
	public int pinchChk(Map<String, Object> map) throws Exception;
	
	//공고 신청 후 (구인자는 수락상태) 수락 선택
	public int apply_o(int ja_number)throws Exception;
	
	//공고 신청 후 (구인자는 수락상태) 거절 선택
	public int apply_x(int ja_number)throws Exception;
	
	//공고 신청중 상태일때 지원 취소하기
	public int applyCancel(Map<String, Object> map)throws Exception;
	
	//자소서 삭제시 등록된 자소서가 1개(대표자소서)라면 삭제 불가능
	public int introDeleteCheck(String m_id) throws Exception;
	
	//자소서 삭제시 등록된 자소서가 1개(대표자소서) 일때 삭제 불가능
	public int defaultIntro_xDel(ResumeDTO resumeDTO)throws Exception;
}
