package kr.co.deataworld.dao;

public interface AccountDAO {
	// 구인자 닉네임 중복검사
	public int m_nickChk(String m_nick) throws Exception;
}
