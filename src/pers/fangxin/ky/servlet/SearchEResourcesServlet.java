package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.service.EResourcesService;
import pers.fangxin.ky.service.impl.EResourcesServiceImpl;

public class SearchEResourcesServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			// 1.取到要查询的关键字
			String ecategory = request.getParameter("ecategory");
			String etitle = request.getParameter("etitle");
			// 2.找service查询
			EResourcesService service = new EResourcesServiceImpl();
			List<EResources> list = service.searchEResources(etitle, ecategory);
			
			request.setAttribute("list", list);
			// 3.跳转页面
			request.getRequestDispatcher("dzzl.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}