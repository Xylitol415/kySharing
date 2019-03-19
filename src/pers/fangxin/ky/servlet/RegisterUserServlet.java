package pers.fangxin.ky.servlet;

import java.io.IOException;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.mapper.Mapper;
import org.apache.commons.beanutils.BeanUtils;

import com.fasterxml.jackson.databind.ObjectMapper;

import pers.fangxin.ky.domin.ResultInfo;
import pers.fangxin.ky.domin.User;
import pers.fangxin.ky.service.UserService;
import pers.fangxin.ky.service.impl.UserServiceImpl;

public class RegisterUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// ��֤У��
		String check = request.getParameter("check");
		// ��Session�л�ȡ��֤��
		HttpSession session = request.getSession();
		String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
		session.removeAttribute("CHECKCODE_SERVER");// Ŀ����Ϊ�˱�֤��֤��ֻ��ʹ��һ��
		if(checkcode_server == null || !checkcode_server.equalsIgnoreCase(check)){
			// ��֤�����
			ResultInfo info = new ResultInfo();
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
			// 1.��ȡ����
			String uname = request.getParameter("uname");
			String upassword = request.getParameter("upassword");
			String uemail = request.getParameter("uemail");
			String ubenke = request.getParameter("ubenke");
			String ubaokao = request.getParameter("ubaokao");
			String umajor = request.getParameter("umajor");
			String uphone = request.getParameter("uphone");
			String ugender = request.getParameter("ugender");
			String uyear = request.getParameter("uyear");

			// 2.��װ����
			User user = new User(uname, upassword, ugender, uphone, uemail, ubenke, ubaokao, umajor, uyear);

			// 3.����Service���ע�����
			UserService service = new UserServiceImpl();
			boolean flag;

			flag = service.regist(user);

			ResultInfo info = new ResultInfo();
			// 4.��Ӧ���
			if (flag) {
				// ע��ɹ�
				info.setFlag(true);
				//System.out.println("ע��ɹ���");
			} else {
				// ע��ʧ��
				info.setFlag(false);
				info.setErrorMsg("ע��ʧ�ܣ�");
				//System.out.println("ע��ʧ�ܣ�");
			}
			// ��info�������л�Ϊjson
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// ��json����д�ؿͻ���
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}