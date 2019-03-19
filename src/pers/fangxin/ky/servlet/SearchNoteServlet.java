package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.service.NoteService;
import pers.fangxin.ky.service.impl.NoteServiceImpl;

public class SearchNoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			// 1.取到要查询的关键字
			String ncategory = request.getParameter("ncategory");
			String nschool = request.getParameter("nschool");
			// 2.找service查询
			NoteService service = new NoteServiceImpl();
			List<Note> list = service.searchNote(nschool, ncategory);
			
			
//			System.out.println("list的大小是："+list.size());
//			for (Note note : list) {
//				System.out.println("note="+note);
//			}
			
			request.setAttribute("list", list);
			// 3.跳转页面
			request.getRequestDispatcher("jyt.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}