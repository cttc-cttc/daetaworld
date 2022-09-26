package kr.co.deataworld.util;

import java.util.HashMap;
import java.util.Map;

/*
 * 지역코드 설정을 위한 문자열 추출 클래스 (예시: 서울 송파구 동남로 99, 경기도 수원시 권선구 ??로) 
 */
public class ExtractAreaCode {
	
	public static Map<String, String> getAreaCode(String m_address1) {
		String address1 = m_address1; // "서울 송파구 동남로 99"
		String[] addressSplit = address1.split(" "); // ["서울", "송파구", "동남로", "99"]
		String addrName1 = addressSplit[0]; // "서울"
		String addrName2 = addressSplit[1]; // "송파구"
		if(addressSplit[2].endsWith("구")) { // a_name2에 시 구가 있을 경우
			addrName2 = addressSplit[2];
		}
		String addrName1_1 = String.valueOf(addrName1.charAt(0)); // "서"
		String addrName1_2 = String.valueOf(addrName1.charAt(1)); // "울"
		addrName2 = addrName2.substring(0, addrName2.length()-1); // "송파"
		
		Map<String, String> addrParam = new HashMap<String, String>();
		addrParam.put("addrName1_1", addrName1_1);
		addrParam.put("addrName1_2", addrName1_2);
		addrParam.put("addrName2", addrName2);
		return addrParam;
	}
}
