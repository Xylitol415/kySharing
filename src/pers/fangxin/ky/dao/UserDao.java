package pers.fangxin.ky.dao;

import java.sql.SQLException;

import pers.fangxin.ky.domin.User;

public interface UserDao {
	/**
	 * 根据姓名查询用户
	 * @param username
	 * @return
	 * @throws SQLException
	 */
	public User findUserByName(String username) throws SQLException;
	
	/**
	 * 保存用户
	 * @param user
	 * @throws SQLException
	 */
	public void save(User user) throws SQLException;

	/**
	 * 根据用户名和密码查询用户
	 * @param uname
	 * @param upassword
	 * @return
	 * @throws SQLException
	 */
	public User findUserByNameAndPassword(String uname, String upassword)throws SQLException;
}
