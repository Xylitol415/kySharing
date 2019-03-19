package pers.fangxin.ky.dao;

import java.sql.SQLException;

import pers.fangxin.ky.domin.User;

public interface UserDao {
	/**
	 * ����������ѯ�û�
	 * @param username
	 * @return
	 * @throws SQLException
	 */
	public User findUserByName(String username) throws SQLException;
	
	/**
	 * �����û�
	 * @param user
	 * @throws SQLException
	 */
	public void save(User user) throws SQLException;

	/**
	 * �����û����������ѯ�û�
	 * @param uname
	 * @param upassword
	 * @return
	 * @throws SQLException
	 */
	public User findUserByNameAndPassword(String uname, String upassword)throws SQLException;
}
