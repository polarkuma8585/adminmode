package co.nambbang.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nambbang.app.admin.AdminMainCommand;
import co.nambbang.app.admin.AdminMerchListCommand;
import co.nambbang.app.admin.AdminMerchListModifyCommand;
import co.nambbang.app.admin.AdminMerchListOkCommand;

@WebServlet("*.do") // 
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		cont.put("/", new AdminMainCommand());	//admin 메인 페이지
		cont.put("/AdminMain.do", new AdminMainCommand());	//admin 메인 페이지
		cont.put("/AdminMerchList.do", new AdminMerchListCommand()); // admin 상품목록관리 페이지 리다이렉트
		cont.put("/AdminMerchListOk.do", new AdminMerchListOkCommand()); //admin 상품목록관리 검색 1
		cont.put("/AdminMerchListModify.do", new AdminMerchListModifyCommand()); //admin 상품목록관리 리스트 상태 변경
		
	
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청하는 url을 분석하여 실행하는 부분
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path= " + path);
		// 권한체크(로그인 체크)

		Command commandImpl = cont.get(path); // 실행 클래스 선택
		String page = null;
		response.setContentType("text/html; charset=UTF-8"); // 한글 인코딩

		if (commandImpl != null) {
			page = commandImpl.execute(request, response);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			}
		} else {
			
		}
	}
}
