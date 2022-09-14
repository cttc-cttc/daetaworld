package kr.co.deataworld.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.service.BoardService;

@Controller
public class BoardController {
	
	
	@Autowired
	BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "board/free/free", method = RequestMethod.GET)
	public ModelAndView list() 	throws Exception{
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> list = service.list();
		mav.addObject("list",list);
		mav.setViewName("board/free/free");
		return mav;
		
	}
	
	
	
	@RequestMapping(value="board/free/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("b_number") int b_number, Model model) throws Exception {
		BoardDTO board = service.getDetail(b_number);
		model.addAttribute("board", board);
		return "board/free/detail";
	}
	
	
	
	//글쓰기폼
	@RequestMapping(value="board/free/register", method = RequestMethod.GET)
	public String register() {
		
		return "board/free/register";
	}
	
	
	//글쓰기폼 등록과정
	@RequestMapping(value="board/free/register", method = RequestMethod.POST)
	public String register(BoardDTO boardDTO, HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		logger.info("내용 : " + boardDTO);
		int r = service.register(boardDTO);
		return "redirect:free";
	}
	
	
	//글 수정폼
	@RequestMapping(value="board/free/update", method = RequestMethod.GET)
	public String update(@RequestParam("b_number") int b_number, Model model) throws Exception {
		
		BoardDTO board = service.getDetail(b_number);
		model.addAttribute("board", board);		
		return "board/free/update";
	}	
	
//	글 수정 저장
	@RequestMapping(value = "board/free/update", method = RequestMethod.POST)
	public String update(BoardDTO boardDTO, RedirectAttributes rttr,HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		int r = service.update(boardDTO);
		// 수정에 성공하면 목록보기로 이동
		if (r > 0) {
			rttr.addFlashAttribute("msg", "수정에 성공 하였습니다.");
			return "redirect:free";
		}
		// 수정에 실패하면 수정보기 화면으로 이동
		return "redirect:update?b_number=" + boardDTO.getB_number();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@GetMapping(value="board/temping/temping")
	String tempingBoard() {
		return "board/temping/temping";
	}
	
	

}
