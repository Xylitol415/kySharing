package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.PResources;
import pers.fangxin.ky.service.PResourcesService;
import pers.fangxin.ky.service.impl.PResourcesServiceImpl;

public class PResourcesListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.查询出来所有的eresources信息
			PResourcesService service = new PResourcesServiceImpl();
			List<PResources> list = service.findAll();
			// 2.数据存储到作用域中
			request.setAttribute("list", list);
			// 3.跳转页面
			request.getRequestDispatcher("zzzl.jsp").forward(request, response);;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}