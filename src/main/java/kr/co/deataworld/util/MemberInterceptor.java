package kr.co.deataworld.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MemberInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 클라이언트에 부여한 세션을 가져온다
		HttpSession session = request.getSession();
		
		@SuppressWarnings("unchecked") // unchecked 경고를 무시
		Map<String, Object> loginInfo = (Map<String, Object>) session.getAttribute("loginInfo");
		
		if(loginInfo == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return false; // 로그인하지 않은 상태에서 접근하면 로그인 폼으로 보냄
		} 
		return true; // 로그인 되어 있으면 통과
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
