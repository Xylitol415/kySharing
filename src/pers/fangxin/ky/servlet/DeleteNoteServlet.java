package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.service.NoteService;
import pers.fangxin.ky.service.impl.NoteServiceImpl;
/**
 * 用于处理删除经验贴
 * @author Administrator
 *
 */
public class DeleteNoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			// 1.接收id
			int nid = Integer.parseInt(request.getParameter("nid"));
			// 2.执行删除业务
			NoteService service = new NoteServiceImpl();
			service.delete(nid);
			// 3.跳转页面
			request.getRequestDispatcher("NoteListServlet").forward(request, response);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
