package pers.fangxin.ky.service.impl;

import java.sql.SQLException;

import pers.fangxin.ky.dao.UserDao;
import pers.fangxin.ky.dao.impl.UserDaoImpl;
import pers.fangxin.ky.domin.User;
import pers.fangxin.ky.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao dao = new UserDaoImpl();
	
	/**
	 * 注册用户
	 * @param user
	 * @return
	 */
	public boolean regist(User user) throws SQLException {
		// 1.根据用户名查询用户对象
		User u = dao.findUserByName(user.getUname());
		// 判断u是否为空
		if(u!=null){
			// 用户名存在，注册失败
			return false;
		}
		// 2.保存用户
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
