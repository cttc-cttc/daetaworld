package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@GetMapping(value="boards/board")
	String board() {
		return "boards/board";
	}
	
	@GetMapping(value="boards/tempingBoard")
	String tempingBoard() {
		return "boards/tempingBoard";
	}

}
