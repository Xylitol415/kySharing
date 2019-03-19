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

public class EResourcesListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.查询出来所有的eresources信息
			EResourcesService service = new EResourcesServiceImpl();
			List<EResources> list = service.findAll();
			// 2.数据存储到作用域中
			request.setAttribute("list", list);
			// 3.跳转页面
			request.getRequestDispatcher("dzzl.jsp").forward(request, response);;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
