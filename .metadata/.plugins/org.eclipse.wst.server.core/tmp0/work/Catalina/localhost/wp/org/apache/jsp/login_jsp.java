/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2020-10-21 05:07:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>LINE FRIENDS</title>\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Roboto\" rel=\"stylesheet\">\r\n");
      out.write("    <!-- <link rel=\"stylesheet\" href=\"./css/main.css\"> -->\r\n");
      out.write("    <style>\r\n");
      out.write("* { margin: 0; padding: 0;}\r\n");
      out.write("body, html { width: 100%; font-family: 'Roboto', sans-serif;}\r\n");
      out.write("ul { list-style: none;}\r\n");
      out.write("a { text-decoration: none;}\r\n");
      out.write("\r\n");
      out.write(".wrap { width: 100%; margin: 0 auto; }\r\n");
      out.write(".hd { width: 1280px; height: 230px; margin: 0 auto; user-select: none;}\r\n");
      out.write(".gnb_top {float: left; width: 1280px; height: 80px;}\r\n");
      out.write(".gnb_top li a { float: left; color: #0b0b0b; font-weight: 800;}\r\n");
      out.write(".top_btn1 { background-image: url(./img/icon_header01_2.png); width: 70px; height: 39px; margin-right: 20px; text-align: center;}\r\n");
      out.write(".top_btn2 { background-image: url(./img/icon_header04_2.png); width: 70px; height: 39px; text-align: center;}\r\n");
      out.write("\r\n");
      out.write(".logo { display: block; width: 300px; color: #41b748; margin-right: 250px; margin-top: 20px; margin-left: 550px;}\r\n");
      out.write(".logo img { width: 174px; height: 24px;}\r\n");
      out.write(".gnb { width: 1280px; height: 60px; margin: 0 auto; float: left; margin-top: 20px;}\r\n");
      out.write(".gnb_lst { clear: both; height: 60px; text-align: center; font-weight: 700; background-color: #41b748; border: solid 1px #41b748; border-radius: 5px;}\r\n");
      out.write(".gnb_lst li { float: left;}\r\n");
      out.write(".gnb_lst a {display: block; width: 213px; height: 60px; float: left; line-height: 60px; color: #ffffff; border-radius: 5px;}\r\n");
      out.write(".gnb_lst a:hover { color: #41b748; background-color: #ffffff; }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".content { clear: both; width: 1280px; margin: 0 auto;}\r\n");
      out.write(".login_top { clear: both; width: 100%; height: 200px; float: left;  margin-bottom: 0px; border:#b2b2b2 1px solid; margin-bottom: 30px; user-select: none;}\r\n");
      out.write(".login_tit { text-align: center; font-size: 30px; font-weight: 800; margin-top: 20px;}\r\n");
      out.write(".login_img { float: left; margin-left: 100px; user-select: none;}\r\n");
      out.write(".login_txt { display: block; float: left; width: 700px; font-size: 24px; line-height: 50px; text-align: center; height: 35px; margin-left: 70px; margin-top: 20px;}\r\n");
      out.write("\r\n");
      out.write(".loginForm {  width: 600px; margin-top: 30px; height: 150px; position: relative; margin-left: 30px;}\r\n");
      out.write(".login_bot { clear: both; display: block; width: 628px; height: 335px; float: left;  padding-left: 56px; padding-right: 56px; margin-left: 253px; margin-right: 253px; margin-bottom: 100px; border:#b2b2b2 1px solid;}\r\n");
      out.write(".idBox, .pwBox { width: 350px; height: 40px; margin-top: 20px; }\r\n");
      out.write("#login { width: 150px; height: 108px; text-align: center;   font-size: 24px; \r\n");
      out.write("color: #ffffff; background-color: #41b748; font-weight: 800; border: 1px solid #49b580; position:absolute; top: 20px; margin-left: 50px;}\r\n");
      out.write(".joinBtn { clear: both; width: 554px; height: 70px; margin-left: 30px; margin-top: 20px; background-color: #41b748; color: #ffffff; border: 1px solid #49b580; text-align:center; margin-bottom: 0; font-size: 24px; font-weight:900; }\r\n");
      out.write("#login:hover { color: #41b748; background-color: #ffffff;}\r\n");
      out.write(".joinBtn:hover {  color: #41b748; background-color: #ffffff;}        \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".ft { clear: both; float: left; width: 100%; height: 210px; background-color: #383838;}\r\n");
      out.write(".ft_logo { float: left; width: 150px;  margin: 30px 150px 5px 400px;}\r\n");
      out.write(".ft_menu { width: 1280px; margin: 0 auto; padding-top: 30px; font-size: 13px;}\r\n");
      out.write("\r\n");
      out.write(".txt a { float: left; color: #b2b2b2; margin-left: 30px; }\r\n");
      out.write(".info { margin-left: 100px;}\r\n");
      out.write(".info1 { clear: both; text-align: left; width: 650px; margin: 0 auto; }\r\n");
      out.write(".info1 li { float: left; color: #ffffff; font-size: 12px; margin: 10px 10px 10px 0px;}\r\n");
      out.write(".info1 li:nth-child(2) {border-left: 1px solid #ffffff; padding-left:10px;}\r\n");
      out.write(".info1 li:last-child { border-left: 1px solid #ffffff; padding-left: 10px;}\r\n");
      out.write(".txt address { clear: both;text-align: center; color: #ffffff; margin-top: 60px;}       \r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

String userID = null;
	if(session.getAttribute("userID") != null){
		
		userID = (String)session.getAttribute("userID");
	}
	int pageNum = 1;
	if(request.getParameter("pageNum")!=null){
		pageNum = Integer.parseInt(request.getParameter("pageNum"));
	}

      out.write("\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("     <header class=\"hd\">\r\n");
      out.write("         <nav class=\"gnb\">\r\n");
      out.write("            <ul class=\"gnb_top\">\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"index.jsp\" class=\"logo\" ><img src=\"./img/img_logo2.png\" alt=\"logo\"></a>\r\n");
      out.write("\t\t\t");

			if(userID == null){
			 
      out.write("\r\n");
      out.write("\t\t\t<a href=\"login.jsp\" class=\"top_btn1\"><img src=\"./img/icon_header01_2.png\" alt=\"login\">LOGIN</a>\r\n");
      out.write("\t\t\t");

			}else {
			 
      out.write("\r\n");
      out.write("\t\t\t<a href=\"admin.jsp\" class=\"login\">정보수정</a>\r\n");
      out.write("\t\t\t<a href=\"logoutAction.jsp\" class=\"login\">로그아웃</a>\r\n");
      out.write("\t\t\t");

			}
			
      out.write("    \r\n");
      out.write("\t\t\t<a href=\"newmem.jsp\" class=\"top_btn2\"><img src=\"./img/icon_header04_2.png\" alt=\"join\">JOIN</a>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("             </ul>              \r\n");
      out.write("             <ul class=\"gnb_lst\">                   \r\n");
      out.write("                 <li><a href=\"\">ABOUT</a></li>\r\n");
      out.write("                 <li><a href=\"\">CORE BUSINESS</a></li>\r\n");
      out.write("                 <li><a href=\"\">GALLERY</a></li>\r\n");
      out.write("                 <li><a href=\"\">MEDIA</a></li>\r\n");
      out.write("                 <li><a href=\"\">NOTICE</a></li>\r\n");
      out.write("                 <li><a href=\"\">SHOP</a></li>\r\n");
      out.write("             </ul>\r\n");
      out.write("         </nav>\r\n");
      out.write("     </header>\r\n");
      out.write("     <div class=\"content\">\r\n");
      out.write("        <div class=\"login_top\">\r\n");
      out.write("            <h2 class=\"login_tit\">회원 로그인</h2>\r\n");
      out.write("            <a href=\"\"><img src=\"./img/login.png\" alt=\"\" class=\"login_img\"></a>\r\n");
      out.write("            <div class=\"login_txt\">\r\n");
      out.write("                <p>로그인 후 LINE FRIENDS의 다양한 서비스를 이용하세요.<br>\r\n");
      out.write("                    아이디와 비밀번호를 입력해주세요.\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"login_bot\">            \r\n");
      out.write("            <form action=\"loginAction.jsp\" method=\"post\" class=\"loginForm\">                \r\n");
      out.write("                <input type=\"text\" placeholder=\"아이디\" name=\"userID\" class=\"idBox\">\r\n");
      out.write("                <input type=\"password\" placeholder=\"비밀번호\" name=\"userPassword\" class=\"pwBox\">\r\n");
      out.write("                <input type=\"submit\" value=\"로그인\" id=\"login\" style=\"cursor: pointer;\">    \r\n");
      out.write("            </form>\r\n");
      out.write("            <input type=\"button\" value=\"회원가입\" class=\"joinBtn\" style=\"cursor: pointer;\" onclick=\"location.href='newmem.jsp'\">\r\n");
      out.write("        </div>                \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"ft_wrap\">   \r\n");
      out.write("        <footer class=\"ft\">\r\n");
      out.write("            <h2>\r\n");
      out.write("                <a href=\"\" class=\"ft_logo\">\r\n");
      out.write("                    <img src=\"./img/footer_logo.png\" alt=\"ft_logo\">\r\n");
      out.write("                </a>\r\n");
      out.write("            </h2>\r\n");
      out.write("            <div class=\"txt\">\r\n");
      out.write("                <ul class=\"ft_menu\">\r\n");
      out.write("                    <li><a href=\"\">제휴제안</a></li>\r\n");
      out.write("                    <li><a href=\"\">온라인 스토어</a></li>\r\n");
      out.write("                    <li><a href=\"\">개인정보 처리방침</a></li>\r\n");
      out.write("                    <li><a href=\"\">FRIENDS CARE</a></li>                    \r\n");
      out.write("                </ul>\r\n");
      out.write("                <div class=\"info\">\r\n");
      out.write("                    <ul class=\"info1\">\r\n");
      out.write("                        <li>라인프렌즈 주식회사&nbsp;</li>\r\n");
      out.write("                        <li>사업자등록번호 : 726-87-00030&nbsp;</li>\r\n");
      out.write("                        <li>통신판매업 신고번호 : 2015-경기성남-0597&nbsp;</li>                   \r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <ul class=\"info1\">\r\n");
      out.write("                        <li>대표이사 : 김성훈&nbsp;</li>\r\n");
      out.write("                        <li>서울특별시 용산구 한남대로 98, 5층 라인프렌즈&nbsp;</li>\r\n");
      out.write("                        <li>1544-5921</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <address>Copyright © SKY.J All Rights Reserved</address>\r\n");
      out.write("            </div>            \r\n");
      out.write("        </footer>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
