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
			// 1.��ȡ��Ҫ��ʾ��ҳ����
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			// 2.����ָ����ҳ����ȡ��ҳ������
			NoteService service = new NoteServiceImpl();
			PageBean pageBean = service.findNoteByPage(currentPage);
			request.setAttribute("pageBean", pageBean);
			// 3.��תҳ��
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