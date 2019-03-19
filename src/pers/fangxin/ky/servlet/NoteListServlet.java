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
 *  �����ѯ���еľ�������Ϣ����ʾ��jyt.jspҳ����
 * @author Administrator
 *
 */
public class NoteListServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.��ѯ�������е�note��Ϣ
			NoteService service = new NoteServiceImpl();
			List<Note> list = service.findAll();
			// 2.���ݴ洢����������
			request.setAttribute("list", list);
			// 3.��תҳ��
			request.getRequestDispatcher("jyt.jsp").forward(request, response);;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}