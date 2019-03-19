package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.service.EResourcesService;
import pers.fangxin.ky.service.impl.EResourcesServiceImpl;

public class DeleteEResourcesServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.接收id
			int eid = Integer.parseInt(request.getParameter("eid"));
			// 2.执行删除业务
			EResourcesService service = new EResourcesServiceImpl();
			service.delete(eid);
			// 3.跳转页面
			request.getRequestDispatcher("EResourcesListServlet").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}