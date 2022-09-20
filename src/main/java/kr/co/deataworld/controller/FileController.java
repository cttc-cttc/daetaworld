package kr.co.deataworld.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.deataworld.util.FileProcess;

@Controller
public class FileController {
	
//	프로필 사진 보여주기
	@GetMapping(value = "displayProfile")
	public ResponseEntity<byte[]> displayProfile(String fileName) {
		return FileProcess.display(FileProcess.PROFILE_IMG_PATH, fileName);
	}
	
//	가게 사진 보여주기
	@GetMapping(value = "displayShop")
	public ResponseEntity<byte[]> displayShop(String fileName) {
		return FileProcess.display(FileProcess.SHOP_IMG_PATH, fileName);
	}
	
}
