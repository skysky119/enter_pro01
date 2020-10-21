package test;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import org.junit.Test;

import user.UserBeans;

public class UserTest {
	@Test
	public void test() {
		UserBeans ub = new UserBeans();
		boolean result = ub.compare("sky","1004");
		if(result) {
			System.out.println("로그인 되었습니다.");
		} else {
			System.out.println("아이디 또는 패스워드가 정확하지 않거나 회원이 아닙니다.");
		}
		assertEquals(true, result);
	}

}