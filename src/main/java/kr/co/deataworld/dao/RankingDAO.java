package kr.co.deataworld.dao;

import java.util.List;
import java.util.Map;

public interface RankingDAO {
	
//	랭킹
	public List<Map<String, Object>> ranking() throws Exception;

//	로그인 유저의 랭킹
	public Map<String, Object> loginUserRanking(String loginId);
}
