package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import pers.fangxin.ky.domin.ResultInfo;
import pers.fangxin.ky.domin.User;
import pers.fangxin.ky.service.UserService;
import pers.fangxin.ky.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1.���յ�¼ҳ�������
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upassword");
		ResultInfo info = new ResultInfo();
		
		// 2.�ж�ҳ�������û��������Ƿ�Ϊ��
		if(uname == ""){
			info.setFlag(false);
			info.setErrorMsg("�������û���");
			// ��info�������л�Ϊjson
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// ��json����д�ؿͻ���
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}else if(upassword == ""){
			info.setFlag(false);
			info.setErrorMsg("����������");
			// ��info�������л�Ϊjson
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// ��json����д�ؿͻ���
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}
		
		// 3.��װ����
		User user = new User(uname, upassword);
		
		// 4.��֤У��
		String check = request.getParameter("check");
		// ��Session�л�ȡ��֤��
		HttpSession session = request.getSession();
		String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
		session.removeAttribute("CHECKCODE_SERVER");// Ŀ����Ϊ�˱�֤��֤��ֻ��ʹ��һ��
		if(checkcode_server == null || !checkcode_server.equalsIgnoreCase(check)){
			// ��֤�����
			//ResultInfo info = new ResultInfo();
			// ע��ʧ��
			info.setFlag(false);
			info.setErrorMsg("��֤�����");
			// ��info�������л�Ϊjson
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// ��json����д�ؿͻ���
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}
		
		try {
			// 5.����Service��ѯ
			UserService service = new UserServiceImpl();
			User u = service.login(user);
			
			// ��ȡ�û����
			String urole = "";
			User us = service.findUserByName(uname);
			if(us != null){
				urole = us.getUrole();
			}
			
			//��װ������Ϣ��ʾ��ҳ��
			//ResultInfo info = new ResultInfo();
			
			// 6.�ж��û������Ƿ�Ϊnull
			if(u == null){
				// �û����������
				info.setFlag(false);
				info.setErrorMsg("�û������������");
			}else{
				// ��¼�ɹ�
				// ���û�������ݴ���session��
				session.setAttribute("uname", uname);
				
				session.setAttribute("urole", urole);
				info.setFlag(true);
			}
			
			// ��Ӧ����
			ObjectMapper mapper = new ObjectMapper();
			response.setContentType("application/json;charset=utf-8");
			mapper.writeValue(response.getOutputStream(), info);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}