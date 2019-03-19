package pers.fangxin.ky.service;

import java.sql.SQLException;

import pers.fangxin.ky.domin.User;

public interface UserService {
	
	/**
	 * ע���û�
	 * @param user
	 * @return
	 */
	boolean regist(User user) throws SQLException;
	
	/**
	 * �û���¼����
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	User login(User user)throws SQLException;
	
	/**
	 * ����������ѯ�û�
	 * @param username
	 * @return
	 * @throws SQLException
	 */
	public User findUserByName(String username) throws SQLException;

}
