package test;

import org.junit.Test;

import admin.Admin;

public class AdminTest {

	@Test
	public void test() {
		Admin ad1 = new Admin();
		Admin ad2 = new Admin();
		Admin ad3 = new Admin();
		Admin ad4 = new Admin();
		
		String adlog1 = ad1.adLogin("admin", "1111");
		String adlog2 = ad2.adLogin("admin", "0000");
		String adlog3 = ad3.adLogin("manager", "2222");
		String adlog4 = ad4.adLogin("sky", "1004");
		
		System.out.println("----------케이스 1(관리자 로그인)----------");
		if(adlog1 == "admin") {
			ad1.memberList();
			ad1.boardManage();
		} else if(adlog1 == "manager") {
			ad1.boardManage();
		} else {
			System.out.println("사이트의 관리자가 아니거나 아이디 혹은 비밀번호가 틀렸습니다.");		
		}
		
		System.out.println("----------케이스 2(비밀번호가 틀린 경우)----------");
		if(adlog2 == "admin") {
			ad2.memberList();
			ad2.boardManage();
		} else if(adlog2 == "manager") {
			ad2.boardManage();
		} else {
			System.out.println("사이트의 관리자가 아니거나 아이디 혹은 비밀번호가 틀렸습니다.");
		}
		
		System.out.println("----------케이스 3(매니저 등급으로 로그인하는 경우)----------");
		if(adlog3 == "admin") {
			ad3.memberList();
			ad3.boardManage();
		} else if(adlog3 == "manager") {
			ad2.boardManage();
		} else {
			System.out.println("사이트의 관리자가 아니거나 아이디 혹은 비밀번호가 틀렸습니다.");
		}		
		
		System.out.println("----------케이스 4(일반 회원으로 로그인하는 경우)----------");
		if(adlog4 == "admin") {
			ad4.memberList();
			ad4.boardManage();
		} else if(adlog4 == "manager") {
			ad4.boardManage();
		} else {
			System.out.println("사이트의 관리자가 아니거나 아이디 혹은 비밀번호가 틀렸습니다.");
		}
		
	}
}
