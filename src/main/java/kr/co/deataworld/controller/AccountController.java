package kr.co.deataworld.controller;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.deataworld.service.accountService;


/*
 * 계정관련 컨트롤러 (회원가입, 로그인/로그아웃, ID찾기/PW찾기)
 */
@Controller
public class AccountController {
	
	@Autowired
	accountService service;
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("로그인화면 접속");
		return "account/loginForm";
	}
	
	@RequestMapping(value = "JoinRore", method = RequestMethod.GET)
	public String Join() {
		logger.info("회원가입화면 접속");
		return "account/joinRegist/JoinRore";
	}
	

	@RequestMapping(value = "write-r", method = RequestMethod.GET)
	public String writer() {
		logger.info("회원가입화면 접속");
		return "account/joinRegist/write-r";
	}
	
	@RequestMapping(value = "write-e", method = RequestMethod.GET)
	public String writee() {
		logger.info("회원가입화면 접속");
		return "account/joinRegist/write-e";
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
	
//	구인자 닉네임 중복 체크
	@ResponseBody
	@PostMapping(value="account/r_nickChk")
	public int r_nickChk(@RequestParam("r_nick")String r_nick ) throws Exception {	
		int r = service.r_nickChk(r_nick);
		return r;
	}
	
   //이메일 인증
	@ResponseBody
	@RequestMapping(value = "emailAuth", method = RequestMethod.POST)
	public String emailAuth(@RequestParam("email") String email) {

		final String user = "daetaworld@naver.com";
		final String password = "Daetaworld123!";
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");

		Session session = Session.getDefaultInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user)); // 수신자메일주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

			// Subject
			message.setSubject("testeste"); // 메일 제목을 입력

			// Text
			String text = "인증 번호는 <span style='color:blue; font-size:16px;'>" + checkNum + "</span> 입니다." + "<br>"
					+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
			message.setText(text, "utf-8", "html"); // 메일 내용을 입력

			// send the message
			Transport.send(message); //// 전송
			System.out.println("message sent successfully...");
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return Integer.toString(checkNum);
	}
}
