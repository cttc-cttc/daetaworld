package kr.co.deataworld.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.service.BoardService;

@Controller
public class BoardController {
	
	
	@Autowired
	BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "board/free", method = RequestMethod.GET)
	public ModelAndView list() 	throws Exception{
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> list = service.list();
		mav.addObject("list",list);
		mav.setViewName("board/free");
		return mav;
		
	}
	
	
	
	@GetMapping(value="board/temping")
	String tempingBoard() {
		return "board/temping";
	}

}
