package kr.co.deataworld.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.deataworld.dto.CommentsDTO;
import kr.co.deataworld.service.BoardService;
import kr.co.deataworld.service.CommentsService;

@Controller
public class CommentsController {
	
	@Autowired
	CommentsService service;

	private static final Logger logger = LoggerFactory.getLogger(CommentsController.class);

	@GetMapping(value = "board/free/reply")
	public String reply() {
		logger.info("sdd");
		return "board/free/reply";
	}

	@PostMapping(value = "board/free/reply")
	public String reply(CommentsDTO commentsDTO) throws Exception {
		logger.info("sdd");
		int r = service.reply(commentsDTO);
		if (r > 0) {
			return "redirect:detail?b_number=" + commentsDTO.getB_number();
		}
		return "board/free/reply";
	}

// 댓글수정폼 - 글을 읽어서 내용을 보여줌
	@RequestMapping(value = "board/free/replyupdate", method = RequestMethod.GET)
	public String replyupdate(@RequestParam("c_number") int c_number, Model model) throws Exception {
		CommentsDTO commentsDTO = service.detailreply(c_number);
		model.addAttribute("commentsDTO", commentsDTO);
		return "board/free/replyupdate";
	}
//댓글 수정 저장
	@RequestMapping(value = "board/free/replyupdate", method = RequestMethod.POST)
	public String replyupdate(CommentsDTO commentsDTO ) throws Exception {
		int r = service.replyupdate(commentsDTO);
		if (r > 0) {
			return "redirect:detail?b_number=" + commentsDTO.getB_number();
		}
		return "redirect:list";
	}
	
	//댓글 삭제하기
		@RequestMapping(value="board/free/replydelete",method = RequestMethod.GET)
		public String replydelete(@RequestParam("c_number") int c_number, RedirectAttributes rttr) throws Exception {
			int r = service.replydelete(c_number);
			
			if(r > 0) {
				rttr.addFlashAttribute("msg","글삭제에 성공하였습니다.");
				return "redirect:free";
			}
			return "redirect:detail?b_number=" + c_number;
		}
		
		
		
		

}
