package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.service.EResourcesService;
import pers.fangxin.ky.service.impl.EResourcesServiceImpl;

public class EditEResourcesServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.接收id
			int eid = Integer.parseInt(request.getParameter("eid"));
			// 2.查询经验贴数据
			EResourcesService service = new EResourcesServiceImpl();
			EResources ers = service.findEResourcesById(eid);
			// 3.存数据
			request.setAttribute("ers", ers);
			// 4.跳转
			request.getRequestDispatcher("dzzl_edit.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}