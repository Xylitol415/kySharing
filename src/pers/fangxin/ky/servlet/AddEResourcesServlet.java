
package pers.fangxin.ky.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.service.EResourcesService;
import pers.fangxin.ky.service.impl.EResourcesServiceImpl;

public class AddEResourcesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			// 1.��ȡ�ͻ����ύ����������
			String ecategory = request.getParameter("ecategory");
			String etitle = request.getParameter("etitle");
			String euname = request.getParameter("euname");
			String date = request.getParameter("etime");
			Date etime = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			String elink = request.getParameter("elink");
			
			EResources ers = new EResources(etitle, ecategory, elink, etime, euname);
			
			// 2.��ӵ����ݿ�
			EResourcesService service = new EResourcesServiceImpl();
			service.insert(ers);
			// 3.��ת��jyt.jspҳ��
			request.getRequestDispatcher("EResourcesListServlet").forward(request, response);;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}