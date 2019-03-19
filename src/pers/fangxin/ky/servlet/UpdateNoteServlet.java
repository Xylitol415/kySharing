package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.service.NoteService;
import pers.fangxin.ky.service.impl.NoteServiceImpl;

public class UpdateNoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			// 1.获取客户端提交上来的数据
			int nid = Integer.parseInt(request.getParameter("nid"));
			String ncategory = request.getParameter("ncategory");
			String ntitle = request.getParameter("ntitle");
			String nuname = request.getParameter("nuname");
			String date = request.getParameter("ntime");
			Date ntime;
			ntime = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			String nschool = request.getParameter("nschool");
			String numajor = request.getParameter("numajor");
			int nscore = Integer.parseInt(request.getParameter("nscore"));
			String ncontent = request.getParameter("ncontent");
			Note note = new Note(nid, ncategory, ntitle, ncontent, ntime, nuname, nschool, numajor, nscore);
			
		
			// 2.更新数据库
			NoteService service = new NoteServiceImpl();
			service.update(note);
			// 3.跳转页面
			request.getRequestDispatcher("NoteListServlet").forward(request, response);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// 2.添加到数据库
		NoteService service = new NoteServiceImpl();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}