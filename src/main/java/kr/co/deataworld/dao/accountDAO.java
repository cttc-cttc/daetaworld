package kr.co.deataworld.dao;

public interface accountDAO {
	// 구인자 닉네임 중복검사
	public int r_nickChk(String r_nick) throws Exception;
}
