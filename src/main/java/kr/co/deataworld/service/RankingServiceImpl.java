package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.RankingDAO;

@Service
public class RankingServiceImpl implements RankingService{
	
	@Autowired
	RankingDAO dao;

	@Override
	public List<Map<String, Object>> ranking() throws Exception {
		// TODO Auto-generated method stub
		return dao.ranking();
	}

}
