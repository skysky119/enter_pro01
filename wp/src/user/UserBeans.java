package user;

public class UserBeans {
	private String userID;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String uid = "sky";
	private String upw = "1004";
	
	public UserBeans(){
		
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public boolean compare(String id, String pw) {
		if(this.uid==id && this.upw == pw){
			return true;	
		} else {
			return false;
		}
	}
	
	public void join(String userId, String userPassword, String userName, String userEmail) {
		if(userId == "") {
			System.out.println("아이디가 입력되지 않았습니다.");
		} else if(userPassword == "") {
			System.out.println("비밀번호가 입력되지 않았습니다.");
		} else if(userName == "") {
			System.out.println("이름이 입력되지 않았습니다.");
		} else if(userEmail == "") {
			System.out.println("이메일이 입력되지 않았습니다.");
		} else {
			System.out.println("회원가입이 정상적으로 완료되었습니다.");
		}
	}
	
}