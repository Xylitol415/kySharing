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
		
		// 1.接收登录页面表单数据
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upassword");
		ResultInfo info = new ResultInfo();
		
		// 2.判断页面输入用户名密码是否为空
		if(uname == ""){
			info.setFlag(false);
			info.setErrorMsg("请输入用户名");
			// 将info对象序列化为json
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// 将json数据写回客户端
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}else if(upassword == ""){
			info.setFlag(false);
			info.setErrorMsg("请输入密码");
			// 将info对象序列化为json
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(info);
			
			// 将json数据写回客户端
			response.setContentType("application/json;charset=utf-8");
			response.getWriter().write(json);
			return;
		}
		
		// 3.封装对象
		User user = new User(uname, upassword);
		
		// 4.验证校验
		String check = request.getParameter("check");
		// 从Session中获取验证码
		HttpSession session = request.getSession();
		String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
		session.removeAttribute("CHECKCODE_SERVER");// 目的是为了保证验证码只能使用一次
		if(checkcode_server == null || !checkcode_server.equalsIgnoreCase(check)){
			// 验证码错误
			//ResultInfo info = new ResultInfo();
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
			// 5.调用Service查询
			UserService service = new UserServiceImpl();
			User u = service.login(user);
			
			// 获取用户身份
			String urole = "";
			User us = service.findUserByName(uname);
			if(us != null){
				urole = us.getUrole();
			}
			
			//封装返回信息显示在页面
			//ResultInfo info = new ResultInfo();
			
			// 6.判断用户对象是否为null
			if(u == null){
				// 用户名密码错误
				info.setFlag(false);
				info.setErrorMsg("用户名或密码错误！");
			}else{
				// 登录成功
				// 将用户名和身份传入session域
				session.setAttribute("uname", uname);
				
				session.setAttribute("urole", urole);
				info.setFlag(true);
			}
			
			// 响应数据
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