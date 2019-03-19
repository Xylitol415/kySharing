package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.service.NoteService;
import pers.fangxin.ky.service.impl.NoteServiceImpl;

public class NoteListPageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.获取需要显示的页码数
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			// 2.根据指定的页数获取该页的数据
			NoteService service = new NoteServiceImpl();
			PageBean pageBean = service.findNoteByPage(currentPage);
			request.setAttribute("pageBean", pageBean);
			// 3.跳转页面
			request.getRequestDispatcher("jyt_page.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}