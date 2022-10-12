package kr.co.deataworld;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.deataworld.dao.BoardDAO;
import kr.co.deataworld.dao.JobAdsDAO;
import kr.co.deataworld.dao.ReviewDAO;
import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.ReviewDTO;
//현재 테스트 코드를 실행할 때 스프링이 로딩 되도록 하는 부분.

@RunWith(SpringJUnit4ClassRunner.class)
//속성 경로에 xml파일을 이용해 스프링이 로딩 된다.
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })

public class DBTest {
    //위에서 스프링이 정상적으로 동작할 경우 스프링이 생성해서 주입해준다.
    //root-context.xml 파일에서 설정한 SqlSesiionFactoryBean설정에 문제가 있었다면 이 코드에서 에러가 발생한다.
	
//	@Inject
//	private BoardDAO boardDao;
	
	@Inject
	private ReviewDAO reviewDao;
	
//	@Test
//	public void freeBoardInsert() throws Exception {
//		BoardDTO dto;
//		for(int i=1; i<110; i++) {
//			dto = new BoardDTO();
//			dto.setB_code(0);
//			dto.setB_contents("자유글 내용내용내용내용 "+i);
//			dto.setB_title("자유글 제목제목제목제목 "+i);
//			dto.setB_date("2020-10-10");
//			dto.setB_hits(0);
//			dto.setDel(0);
//			dto.setM_id("yamu123");
//			dto.setM_nick("야무지게벌어야지");
//			dto.setR_code(0);
//			
//			boardDao.register(dto);
//			Thread.sleep(1000);
//		}
//	}
//	
//	@Test
//	public void tempingBoardInsert() throws Exception {
//		BoardDTO dto;
//		for(int i=1; i<110; i++) {
//			dto = new BoardDTO();
//			dto.setB_code(1);
//			dto.setB_contents("땜빵글 내용내용내용내용 "+i);
//			dto.setB_title("땜빵글 제목제목제목제목 "+i);
//			dto.setB_date("2020-10-10");
//			dto.setB_hits(0);
//			dto.setDel(0);
//			dto.setM_id("younghon");
//			dto.setM_nick("자유로운영혼");
//			dto.setR_code(0);
//			
//			boardDao.tempingRegister(dto);
//			Thread.sleep(1000);
//		}
//	}
	
	@Test
	public void testOwnerReviewInsert() throws Exception {
		ReviewDTO dto;
		for(int i=0; i<10; i++) {
			int rnd = (int)(Math.random()*5+1);
			dto = new ReviewDTO();
			dto.setW_rate(5);
			dto.setW_comments("후기내용");
			dto.setW_writer("testOwner");
			dto.setId_rated("albaman1"); // 랭킹에 표시할 유저의 id
			dto.setA_number(1);
			
			reviewDao.r_reviewRegister(dto); // 공고등록
			Thread.sleep(1000); // 1초간 쉬기
		}
	}

}

