package kr.co.deataworld.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.deataworld.dao.PointDAO;
import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.PointDTO;
import kr.co.deataworld.util.PageProcess;

@Service
public class PointServiceImpl implements PointService{
	@Autowired
	PointDAO dao;

	@Override
	public PointDTO point(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.point(id);
	}

	@Override
	public List<EarnedPointDTO> earnedPoint(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.earnedPoint(id);
	}

	@Override
	public List<DeductedPointDTO> deductedPoint(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.deductedPoint(id);
	}

	@Override
	public int pointDeduct(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.pointDeduct(map);
	}

	@Override
	public int pointAdd(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.pointAdd(map);
	}

	@Override
	public int earnedPointCnt(String id) {
		// TODO Auto-generated method stub
		return dao.earnedPointCnt(id);
	}

	@Override
	public List<EarnedPointDTO> earnedPointPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.earnedPointPage(map);
	}

	@Override
	public int deductedPointCnt(String id) {
		// TODO Auto-generated method stub
		return dao.deductedPointCnt(id);
	}

	@Override
	public List<DeductedPointDTO> deductedPointPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.deductedPointPage(map);
	}

}
