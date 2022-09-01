package kr.co.deataworld;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.entity.JobAdsEntity;
//현재 테스트 코드를 실행할 때 스프링이 로딩 되도록 하는 부분.

@RunWith(SpringJUnit4ClassRunner.class)
//속성 경로에 xml파일을 이용해 스프링이 로딩 된다.
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })

public class DBTest {
    //위에서 스프링이 정상적으로 동작할 경우 스프링이 생성해서 주입해준다.
    //root-context.xml 파일에서 설정한 SqlSesiionFactoryBean설정에 문제가 있었다면 이 코드에서 에러가 발생한다.
	@Inject
	private JobAdsDAO dao;
	
//	@Test
//	public void testInsert() throws Exception {
//		JobAdsEntity entity;
//		for(int i=1; i<10; i++) {
//			entity = new JobAdsEntity();
//			entity.setA_number("공고번호"+i);
//			entity.setA_date("날짜"+i);
//			entity.setA_time("시간"+i);
//			entity.setA_wage("시급"+i);
//			entity.setA_urgency("0");
//			entity.setA_status("1");
//			entity.setUa_date("2021.10.10");
//			entity.setR_id("구인자ID"+i);
//			entity.setR_code(null);
//			
//			dao.insert(entity); // 공고등록
//			Thread.sleep(1000); // 1초간 쉬기
//		}
//	}

}

