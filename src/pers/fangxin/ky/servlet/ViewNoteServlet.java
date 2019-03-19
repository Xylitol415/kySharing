package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.service.NoteService;
import pers.fangxin.ky.service.impl.NoteServiceImpl;

/**
 * 处理浏览单个经验贴详细信息的业务
 * @author Administrator
 *
 */
public class ViewNoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.接收有浏览的经验贴id参数
			int nid = Integer.parseInt(request.getParameter("nid"));
			// 2.查找单个经验贴
			NoteService service = new NoteServiceImpl();
			Note note = service.findNoteById(nid);
			request.setAttribute("note", note);
			// 3.跳转界面
			request.getRequestDispatcher("jyt_details.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
