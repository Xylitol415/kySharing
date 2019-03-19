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
 * 处理单个经验贴的更新，查询一个经验贴的信息，然后跳转到更新页面
 * @author Administrator
 *
 */

public class EditNoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.接收id
			int nid = Integer.parseInt(request.getParameter("nid"));
			// 2.查询经验贴数据
			NoteService service = new NoteServiceImpl();
			Note note = service.findNoteById(nid);
			// 3.存数据
			request.setAttribute("note", note);
			// 4.跳转
			request.getRequestDispatcher("jyt_edit.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
