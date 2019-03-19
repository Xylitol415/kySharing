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

/**
 *  负责查询所有的经验贴信息，显示在jyt.jsp页面上
 * @author Administrator
 *
 */
public class NoteListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.查询出来所有的note信息
			NoteService service = new NoteServiceImpl();
			List<Note> list = service.findAll();
			// 2.数据存储到作用域中
			request.setAttribute("list", list);
			// 3.跳转页面
			request.getRequestDispatcher("jyt.jsp").forward(request, response);;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}