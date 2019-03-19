package pers.fangxin.ky.service.impl;

import java.sql.SQLException;

import pers.fangxin.ky.dao.UserDao;
import pers.fangxin.ky.dao.impl.UserDaoImpl;
import pers.fangxin.ky.domin.User;
import pers.fangxin.ky.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao dao = new UserDaoImpl();
	
	/**
	 * ע���û�
	 * @param user
	 * @return
	 */
	public boolean regist(User user) throws SQLException {
		// 1.�����û�����ѯ�û�����
		User u = dao.findUserByName(user.getUname());
		// �ж�u�Ƿ�Ϊ��
		if(u!=null){
			// �û������ڣ�ע��ʧ��
			return false;
		}
		// 2.�����û�
		dao.save(user);
		return true;
	}

	public User login(User user) throws SQLException {
		// TODO Auto-generated method stub
		return dao.findUserByNameAndPassword(user.getUname(),user.getUpassword());
	}

	public User findUserByName(String username) throws SQLException {
		return dao.findUserByName(username);
	}
	
	
	

}
