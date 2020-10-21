package test;

import org.junit.Test;

import user.UserBeans;

public class JoinTest {

	@Test
	public void tt() {
		System.out.println("---------케이스1 (아이디 미입력)---------");
		UserBeans ub1 = new UserBeans();
		ub1.join("", "111", "테스트1", "test1@test.test");
		
		System.out.println("---------케이스2 (비밀번호 미입력)---------");
		UserBeans ub2 = new UserBeans();
		ub1.join("user2", "", "테스트2", "test2@test.test");

		System.out.println("---------케이스3 (이름 미입력)---------");
		UserBeans ub3 = new UserBeans();
		ub1.join("user3", "333", "", "test3@test.test");

		System.out.println("---------케이스4 (이메일 미입력)---------");
		UserBeans ub4 = new UserBeans();
		ub1.join("user4", "444", "테스트4", "");
		
		System.out.println("---------케이스5 (모두 입력 완료)---------");
		UserBeans ub5 = new UserBeans();
		ub1.join("user5", "555", "테스트5", "test5@test.test");
		
	}

}
