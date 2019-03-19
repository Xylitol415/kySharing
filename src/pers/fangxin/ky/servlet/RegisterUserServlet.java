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
		// 验证校验
		String check = request.getParameter("check");
		// 从Session中获取验证码
		HttpSession session = request.getSession();
		String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
		session.removeAttribute("CHECKCODE_SERVER");// 目的是为了保证验证码只能使用一次
		if(checkcode_server == null || !checkcode_server.equalsIgnoreCase(check)){
			// 验证码错误
			ResultInfo info = new ResultInfo();
			// 注册失败
			info.setFlag(false);
			info.setErrorMsg("验证码错误！");
			// 将info对象序列化为json
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// 将json数据写回客户端
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}
		
		try {
			// 1.获取数据
			String uname = request.getParameter("uname");
			String upassword = request.getParameter("upassword");
			String uemail = request.getParameter("uemail");
			String ubenke = request.getParameter("ubenke");
			String ubaokao = request.getParameter("ubaokao");
			String umajor = request.getParameter("umajor");
			String uphone = request.getParameter("uphone");
			String ugender = request.getParameter("ugender");
			String uyear = request.getParameter("uyear");

			// 2.封装对象
			User user = new User(uname, upassword, ugender, uphone, uemail, ubenke, ubaokao, umajor, uyear);

			// 3.调用Service完成注册操作
			UserService service = new UserServiceImpl();
			boolean flag;

			flag = service.regist(user);

			ResultInfo info = new ResultInfo();
			// 4.响应结果
			if (flag) {
				// 注册成功
				info.setFlag(true);
				//System.out.println("注册成功！");
			} else {
				// 注册失败
				info.setFlag(false);
				info.setErrorMsg("注册失败！");
				//System.out.println("注册失败！");
			}
			// 将info对象序列化为json
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// 将json数据写回客户端
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