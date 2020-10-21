package admin;

public class Admin {
	private String adId;
	private String adPw;
	private String grade = "";
	
	public String getAdId() {
		return adId;
	}
	public void setAdId(String adId) {
		this.adId = adId;
	}
	public String getAdminPw() {
		return adPw;
	}
	public void setAdPw(String adPw) {
		this.adPw = adPw;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String adLogin(String adId, String adPw) {
		if(adId == "admin" && adPw == "1111"){
			this.grade = "admin";
		} else if(adId == "manager" && adPw == "2222") {
			this.grade = "manager";
		} else {
			this.grade = "member";
		}
		return this.grade;
	}
	
	public void memberList() {
		System.out.println("관리자가 관리 가능한 전체 회원 목록을 출력합니다.");
	}
	public void boardManage() {
		System.out.println("게시판 관리자 목록을 출력합니다.");
	}
}
