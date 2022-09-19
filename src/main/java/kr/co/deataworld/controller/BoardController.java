package kr.co.deataworld.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.CommentsDTO;
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
		// 댓글목록
				List<CommentsDTO> list = service.getDetail1(b_number);
				System.out.println(list);
				model.addAttribute("list", list);
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
	
	
	//삭제하기
	@RequestMapping(value="board/free/delete",method = RequestMethod.GET)
	public String delete(@RequestParam("b_number") int b_number, RedirectAttributes rttr) throws Exception {
		int r = service.delete(b_number);
		
		if(r > 0) {
			rttr.addFlashAttribute("msg","글삭제에 성공하였습니다.");
			return "redirect:free";
		}
		return "redirect:detail?b_number=" + b_number;
	}
	
	
	

	//떙빵 글보여주기
	@RequestMapping(value = "board/temping/temping", method = RequestMethod.GET)
	public ModelAndView tempinglist() 	throws Exception{
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> tempinglist = service.tempinglist();
		mav.addObject("tempinglist",tempinglist);
		mav.setViewName("board/temping/temping");
		return mav;
		
	}
	
	@RequestMapping(value="board/temping/tempingdetail", method = RequestMethod.GET)
	public String tempingdetail(@RequestParam("b_number") int b_number, Model model) throws Exception {
		BoardDTO temping = service.tempinggetDetail(b_number);
		model.addAttribute("temping", temping);
	
		// 댓글목록
		List<CommentsDTO> tempinglist = service.getDetail1(b_number);
		System.out.println(tempinglist);
		model.addAttribute("tempinglist", tempinglist);

		return "board/temping/tempingdetail";
	}
	
	
	
	
	    //글쓰기폼
		@RequestMapping(value="board/temping/tempingregister", method = RequestMethod.GET)
		public String tempingregister() {
			
			return "board/temping/tempingregister";
		}
		
		//글쓰기폼 등록과정
		@RequestMapping(value="board/temping/tempingregister", method = RequestMethod.POST)
		public String tempingregister(BoardDTO boardDTO, HttpServletRequest request)throws Exception {
			request.setCharacterEncoding("utf-8");
			logger.info("내용 : " + boardDTO);
			int r = service.tempingregister(boardDTO);
			return "redirect:temping";
		}
		
		//땜빵글 수정폼
		@RequestMapping(value="board/temping/tempingupdate", method = RequestMethod.GET)
		public String tempingupdate(@RequestParam("b_number") int b_number, Model model) throws Exception {
			
			BoardDTO temping = service.tempinggetDetail(b_number);
			model.addAttribute("temping", temping);		
			return "board/temping/tempingupdate";
		}	
		
		//떔빵글 수정 저장
		@RequestMapping(value = "board/temping/tempingupdate", method = RequestMethod.POST)
		public String tempingupdate(BoardDTO boardDTO, RedirectAttributes rttr,HttpServletRequest request) throws Exception {
			request.setCharacterEncoding("utf-8");
			int r = service.tempingupdate(boardDTO);
			// 수정에 성공하면 목록보기로 이동
			if (r > 0) {
				rttr.addFlashAttribute("msg", "수정에 성공 하였습니다.");
				return "redirect:temping";  // 여기이상
			}
			// 수정에 실패하면 수정보기 화면으로 이동
			return "redirect:tempingupdate?b_number=" + boardDTO.getB_number();
		}
		

		//떔빵삭제하기
		@RequestMapping(value="board/temping/tempingdelete",method = RequestMethod.GET)
		public String tempingDelete(@RequestParam("b_number") int b_number, RedirectAttributes rttr) throws Exception {
			int r = service.tempingdelete(b_number);
			
			if(r > 0) {
				rttr.addFlashAttribute("msg","글삭제에 성공하였습니다.");
				return "redirect:temping";
			}
			return "redirect:tempingdetail?b_number=" + b_number;
		}
		
		
		
	
	

}


