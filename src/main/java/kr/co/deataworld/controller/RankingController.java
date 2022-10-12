package kr.co.deataworld.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.deataworld.service.RankingService;

@Controller
public class RankingController {
	@Autowired
	RankingService service;
	
	//랭킹 조회수 보여주기 1~5위까지
	@GetMapping(value="ranking")
	public String ranking(Model model, HttpServletRequest request)throws Exception{
		List<Map<String, Object>> ranking = service.ranking();
		model.addAttribute("ranking", ranking);
		
		// 로그인 유저가 있으면 해당 유저의 랭킹정보를 따로 select
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		Map<String, Object> loginInfo = (Map<String, Object>) session.getAttribute("loginInfo");
		if(loginInfo != null) {
			String loginId = (String) loginInfo.get("m_id");
			Map<String, Object> loginRankInfo = service.loginUserRanking(loginId);
			model.addAttribute("loginRankInfo", loginRankInfo);
		}
		return "/ranking/ranking";	
	}
	
	
	
	
	
	
	
	
	
}
