package kr.co.deataworld.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthenticationInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 클라이언트에 부여한 세션을 가져온다
		HttpSession session = request.getSession();
		if(session.getAttribute("loginType") == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return false; // 로그인 유저가 없으면 로그인 폼으로 보냄
			
		} else if((int) session.getAttribute("loginType") != 0) {
			response.sendRedirect(request.getContextPath() + "/");
			return false; // 로그인 유저가 관리자가 아니면 홈으로 보냄
		}
		return true; // 로그인이 되어 있으면 통과
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
