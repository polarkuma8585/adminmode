package co.nambbang.app.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nambbang.app.common.Command;
import co.nambbang.app.dao.AdminDao;
import co.nambbang.app.dto.AdminMerchListDto;

public class AdminMerchListOkCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
		AdminMerchListDto dto = new AdminMerchListDto();
		AdminDao dao = new AdminDao();
		
		
		String name = request.getParameter("search_word");
				
		dto.setmCtg(request.getParameter("category"));		
		dto.setsDate(request.getParameter("sDate"));
		dto.seteDate(request.getParameter("endDate"));
		dto.setsTime(request.getParameter("rTime"));
		dto.seteTime(request.getParameter("eTime"));
		dto.setmStatAll(request.getParameter("s_all"));
		dto.setmStatOnSale(request.getParameter("s_onsale"));
		dto.setmStatCancel(request.getParameter("s_cancel"));
		dto.setmStatComplete(request.getParameter("s_complete"));
		dto.setmStatPart(request.getParameter("s_part"));
		dto.setMstatSoldOut(request.getParameter("s_soldOut"));
				
		list = dao.selectMerchList(dto, name);
		
		request.setAttribute("list", list);
		
		String path = "/examples/merchList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		return null;
	}

}
