package pers.fangxin.ky.service;

import java.sql.SQLException;

import pers.fangxin.ky.domin.User;

public interface UserService {
	
	/**
	 * 注册用户
	 * @param user
	 * @return
	 */
	boolean regist(User user) throws SQLException;
	
	/**
	 * 用户登录方法
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	User login(User user)throws SQLException;
	
	/**
	 * 根据姓名查询用户
	 * @param username
	 * @return
	 * @throws SQLException
	 */
	public User findUserByName(String username) throws SQLException;

}
