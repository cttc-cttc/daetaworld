package kr.co.deataworld.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.deataworld.service.NotificationService;

@Controller
public class NotificationController {
	
	@Inject
	NotificationService service;
	
//	로그인 유저의 알림목록
	@ResponseBody
	@GetMapping(value = "notificationList")
	public List<Map<String, Object>> notificationList(String m_id) {
		return service.notificationList(m_id);
	}
	
//	알림목록 수
	@ResponseBody
	@GetMapping(value = "notificationCnt")
	public int notificationCnt(String m_id) {
		return service.notificationCnt(m_id);
	}
	
//	알림목록 삭제
	@ResponseBody
	@GetMapping(value = "deleteNotification")
	public int deleteNotification(String m_id) {
		return service.deleteNotification(m_id);
	}
}
