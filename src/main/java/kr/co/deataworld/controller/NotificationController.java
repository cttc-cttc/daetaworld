package kr.co.deataworld.controller;

import java.util.HashMap;
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
	
//	알림목록 전체 삭제
	@ResponseBody
	@GetMapping(value = "deleteAll")
	public int deleteAll(String m_id) {
		return service.deleteAll(m_id);
	}
	
//	유저가 신고당한 경우 클릭 시 알림삭제
	@GetMapping(value = "deletePart")
	public String deletePart(String m_id) {
		Map<String, Object> delNotiInfo = new HashMap<String, Object>();
		delNotiInfo.put("m_id", m_id);
		delNotiInfo.put("n_type", 10);
		service.deletePart(delNotiInfo);
		return "redirect:/";
	}
}
