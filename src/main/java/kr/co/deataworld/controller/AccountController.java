package kr.co.deataworld.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 계정관련 컨트롤러 (회원가입, 로그인/로그아웃, ID찾기/PW찾기)
 */
@Controller
public class AccountController {
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("로그인화면 접속");
		return "account/loginForm";
	}
	
	@RequestMapping(value = "Join", method = RequestMethod.GET)
	public String Join() {
		logger.info("회원가입화면 접속");
		return "account/JoinRegist";
	}
	
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String name, String password, HttpSession session) {
		logger.info("name : " + name + " / password : " + password);
		if(name.equals("admin") && password.equals("admin123")) {
			session.setAttribute("loginUser", name);
			session.setAttribute("loginType", 0);
			
		} else if(name.equals("user") && password.equals("user123")) {
			session.setAttribute("loginUser", name);
			session.setAttribute("loginType", 1);
			
		} else if(name.equals("owner") && password.equals("owner123")) {
			session.setAttribute("loginUser", name);
			session.setAttribute("loginType", 2);
			
		} else {
			return "redirect:login";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("로그아웃");
		session.invalidate();
		return "redirect:/";
	}
}
