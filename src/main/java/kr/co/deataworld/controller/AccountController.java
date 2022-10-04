package kr.co.deataworld.controller;

import java.util.HashMap;

import java.util.Map;
import java.util.Properties;



import java.util.Random;

import javax.inject.Inject;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.deataworld.dto.MemberDTO;

import kr.co.deataworld.service.AccountService;
import kr.co.deataworld.util.ExtractAreaCode;
import kr.co.deataworld.util.FileProcess;



/*
 * 계정관련 컨트롤러 (회원가입, 로그인/로그아웃, ID찾기/PW찾기)
 */
@Controller
public class AccountController {
	
	@Autowired
	AccountService service;
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@GetMapping(value = "login")
	public String loginForm() {
		logger.info("로그인화면 접속");
		return "account/loginForm";
	}
	
	
	
//	로그인
	@PostMapping(value = "login")
	public String login(@RequestParam Map<String, String> loginInfo, HttpSession session, RedirectAttributes attr) {
		logger.info("로그인 정보 : " + loginInfo.toString());
		Map<String, Object> loginResult = service.login(loginInfo);
		if(loginResult == null) {
			attr.addFlashAttribute("loginFailedMsg", "로그인 정보가 일치하지 않습니다.");
			return "redirect:login";
		}
		
		// 헤더 로그인 정보 세션값 등록
		// m_nick, m_picture, point를 따로 세션값에 지정하는 이유는 회원정보 수정 시 바로 적용하기 위해서
		session.setAttribute("loginInfo", loginResult); // m_id, m_type (m_nick, m_picture, point 이것도 들어가긴 하지만 정작 안씀)
		session.setAttribute("loginM_nick", loginResult.get("m_nick")); // m_nick
		session.setAttribute("loginM_picture", loginResult.get("m_picture")); // m_picture
		session.setAttribute("loginPoint", loginResult.get("point")); // point
		return "redirect:/";
	}
	
	
	//아이디 찾기 

	
	
	
	@RequestMapping(value="account/findId", method=RequestMethod.POST)
	public String findId(@RequestParam("m_email")String m_email, Model model, HttpSession session ) throws Exception{
		logger.info("m_email"+m_email);
				
		if(service.findEmCheck(m_email)==0) {
		model.addAttribute("msg", "이메일을 확인해주세요");
		return "account/findId";
		}else {
		model.addAttribute("fid", service.findId(m_email));
		return "account/rs";
		}
	}
	
	
	//비밀번호 찾기 
	
		
//	@RequestMapping(value="account/findPw", method=RequestMethod.POST)
//	public String findPw(MemberDTO memberDTO,Model model,@RequestParam("m_email")String m_email, @RequestParam("m_id")String m_id) throws Exception{
//		logger.info("memberPw"+memberDTO.getM_id());
//		
//		if(service.findPwCheck(memberDTO)==0) {
//			logger.info("PWCheck");
//			model.addAttribute("msg", "아이디와 이메일를 확인해주세요");
//			
//			return "account/findPwView";
//		}else {
//	
//		service.findPw(memberDTO.getM_email(),memberDTO.getM_id());
//		model.addAttribute("fpw", service.findPw(m_email,m_id));
//		
//		return"account/rs2";
//		}
//	}
//	
	
	//비밀번호 찾기
	   @RequestMapping(value="account/findPw", method=RequestMethod.POST)
	   public String findPw(@RequestParam("m_id")String m_id,@RequestParam("m_email")String m_email, Model model) throws Exception {
	      logger.info("m_email"+m_email, "m_id"+m_id);
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("m_id", m_id);
	      map.put("m_email", m_email);
	      
	      if(service.findEmCheck(m_email)==0) {
	  		model.addAttribute("msg", "입력정보를 확인해주세요");
	  		return "account/findPwView";
	  		}
	      if(service.findIdCheck(m_id)==0) {
		  		model.addAttribute("msg", "입력정보를 확인해주세요");
		  		return "account/findPwView";
		  		}else {
	      
	      Map<String, Object> findPw = service.findPw(map); 
	      model.addAttribute("fpw", findPw);
	      return "account/rs2";
	   }
	   }

	   
////		지원자 정보보기
//		@GetMapping(value="employerMapper/canDetail")
//		public String canDetail(@RequestParam("m_id")String m_id, 
//				@RequestParam("a_number")int a_number, 
//				@RequestParam("i_number")int i_number , Model model) throws Exception {
//			model.addAttribute("leftMenu", "adsApplied");
//			Map<String, Object> map = new HashMap<String, Object>();
//			map.put("m_id", m_id);
//			map.put("i_number", i_number);
//			map.put("a_number", a_number);
//			Map<String, Object> detail = service.canDetail(map);
//			model.addAttribute("detail", detail);
//			model.addAttribute("a_number", a_number);
//			return "employer/candidates/canDetail";
//		}
//	
			
			
//			@RequestMapping(value="/findIdView", method=RequestMethod.GET)
//			public String findIdView() throws Exception{
//				return"/member/findIdView";
//			}
//			
//			@RequestMapping(value="account/findId", method=RequestMethod.POST)
//			public String findId(MemberDTO memberDTO,Model model) throws Exception{
//				logger.info("m_email"+memberDTO.getM_email());
//						
//				if(service.findIdCheck(memberDTO.getM_email())==0) {
//				model.addAttribute("msg", "이메일을 확인해주세요");
//				return "account/findIdView";
//				}else {
//				model.addAttribute("member", service.findId(memberDTO.getM_email()));
//				return
//						"account/findId";
//				}
//			}
			
	
			
	
			
			
//	로그아웃
	@GetMapping(value = "logout")
	public String logout(HttpSession session) {
		logger.info("로그아웃");
		session.invalidate();
		return "redirect:/";
	}	
	
	@GetMapping(value = "joinRore")
	public String Join() {
		logger.info("회원가입 선택 화면 접속");
		return "account/joinRegist/joinRore";
	}
	
	@GetMapping(value = "write-e")
	public String writee() {
		logger.info("구직자 회원가입화면 접속");
		return "account/joinRegist/write-e";
	}
	
	@GetMapping(value = "write-r")
	public String writer() {
		logger.info("구인자 회원가입화면 접속");
		return "account/joinRegist/write-r";
	}
	
	@GetMapping(value = "findId")
	public String findId() {
		logger.info("id 찾기 접속");
		return "account/findId";
	}
	
	@GetMapping(value = "findPw")
	public String findPw() {
		logger.info("pw 찾기 접속");
		return "account/findPw";
	}
	
	@GetMapping(value = "rs")
	public String rs() {
		logger.info("아이디 찾기 결과 접속");
		return "account/rs";
	}
	
	@GetMapping(value = "rs2")
	public String rs2() {
		logger.info("비밀번호 찾기 결과 접속");
		return "account/rs2";
	}
	
	@GetMapping(value="findIdView")
	public String findIdView() {
		return"account/findIdView";
	}
	
	@GetMapping(value="findPwView")
	public String findPwView() {
		return"account/findPwView";
	}
	
	
//	구직자, 구인자 회원가입
	@PostMapping(value = "register")
	public String writee(MemberDTO member, String terms1, String terms2, MultipartFile chooseFile) {
		if(member.getM_type() == 1)
			logger.info("구직자 회원가입");
		else if(member.getM_type() == 2)
			logger.info("구인자 회원가입");
		
		// 선택약관1 체크했을 때 등록
		if(terms1 != null)
			member.setM_terms1(1);
		
		// 선택약관2 체크했을 때 등록
		if(terms2 != null)
			member.setM_terms2(1);
		
		// 프로필사진 업로드 했을 때 등록
		if(!chooseFile.getOriginalFilename().isEmpty()) {
			String savedName = FileProcess.insertImg(chooseFile, FileProcess.PROFILE_IMG_PATH);
			member.setM_picture(savedName);
		} else {
			// 프로필사진 업로드 안하면 default로 등록
			member.setM_picture("default");
		}
		
		// 지역코드 설정
		Map<String, String> addrParam = ExtractAreaCode.getAreaCode(member.getM_address1());
		String areaCode = service.getAreaCode(addrParam); // 11710 (서울시 송파구 지역코드)
		member.setA_code(areaCode);
		
		service.register(member);
		return "redirect:/";
	}

//	닉네임 중복 체크
	@ResponseBody
	@PostMapping(value="account/m_nickChk")
	public int m_nickChk(@RequestParam("m_nick")String m_nick ) throws Exception {	
		int r = service.m_nickChk(m_nick);
		return r;
	}
	
//	아이디 중복 체크
	@ResponseBody
	@PostMapping(value="account/m_idChk")
	public int m_idChk(@RequestParam("m_id")String m_id ) throws Exception {	
		int ri = service.m_idChk(m_id);
		return ri;
	}
	
//	이메일 인증 (메일 가입 이름 dd) 어차피 되지도 않는거 실행하면 에러 뜨니까 주석으로 바꿈
	@ResponseBody
	@RequestMapping(value = "emailAuth", method = RequestMethod.POST)
	public String emailAuth(@RequestParam("email") String email) {

		final String user = "daetaworld@naver.com";
		final String password = "bpXud52Jdl!K";
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

//		Properties prop = new Properties();
//		prop.put("mail.smtp.host", "smtp.naver.com");
//		prop.put("mail.smtp.port", 465);
//		prop.put("mail.smtp.auth", "true");
//		prop.put("mail.smtp.ssl.enable", "true");
//		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");
//
//		Session session = Session.getDefaultInstance(prop, new Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(user, password);
//			}
//		});
//
//		try {
//			MimeMessage message = new MimeMessage(session);
//			message.setFrom(new InternetAddress(user)); // 수신자메일주소
//			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
//
//			// Subject
//			message.setSubject("오늘의대타 인증메일 입니다."); // 메일 제목을 입력
//
//			// Text
//			String text = "인증 번호는 <span style='color:blue; font-size:16px;'>" + checkNum + "</span> 입니다." + "<br>"
//					+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
//			message.setText(text, "utf-8", "html"); // 메일 내용을 입력
//
//			// send the message
//			Transport.send(message); //// 전송
//			System.out.println("message sent successfully...");
//		} catch (AddressException e) {
//			e.printStackTrace();
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		}
		return Integer.toString(checkNum);
	}
	
	
	
}

