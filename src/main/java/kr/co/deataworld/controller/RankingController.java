package kr.co.deataworld.controller;

import java.util.List;
import java.util.Map;

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
	public String ranking(Model model)throws Exception{
		List<Map<String, Object>> ranking = service.ranking();
		model.addAttribute("ranking", ranking);
		return "/ranking/ranking";	
	}
	
	
	
	
	
	
	
	
	
}
