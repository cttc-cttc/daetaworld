package kr.co.deataworld.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.UUID;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileProcess {
	public static final String PROFILE_IMG_PATH = "C:\\project\\daetaworld\\images\\profile"; // 프로필사진 저장경로
	public static final String SHOP_IMG_PATH = "C:\\project\\daetaworld\\images\\shop"; // 가게사진 저장경로
	public static final String SHOP_LICENSE_PATH = "C:\\project\\daetaworld\\images\\business_license"; // 가게사진 저장경로
	
//	사진을 화면에 출력
	public static ResponseEntity<byte[]> display(String uploadPath, String fileName) {
		File file = new File(uploadPath + "\\" + fileName);
		ResponseEntity<byte[]> result = null; // 로컬에 있는 파일을 화면에 출력하려면 ResponseEntity<byte[]> 라는 타입을 써야 함 ???????????
		try {
			// ResponseEntity의 경우 http response 메시지의 header와 status(상태 코드)를 조작하기 위해 사용함 ????????????????????
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.CREATED);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	첫 이미지 파일 저장
	public static String insertImg(MultipartFile file, String uploadPath) {
		// UUID.randomUUID() : 알파벳과 -을 이용해 랜덤 문자열 생성
		String savedName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		File target = new File(uploadPath, savedName);
		try {
			FileCopyUtils.copy(file.getBytes(), target);
		} catch (IOException e) {
			e.printStackTrace();
		} // File 객체를 지정한 경로에 실제로 저장
		
		return savedName;
	}
	
//	이미지 파일 업데이트
	public static String updateImg(MultipartFile file, String uploadPath, String preFileName) {
		// 기존 이미지 파일은 로컬 경로에서 삭제
		File deleteTarget = new File(uploadPath, preFileName);
		deleteTarget.delete();
		
		// 변경한 이미지 파일 저장
		String savedName = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
		File updateTarget = new File(uploadPath, savedName);
		try {
			FileCopyUtils.copy(file.getBytes(), updateTarget);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return savedName;
	}
}
