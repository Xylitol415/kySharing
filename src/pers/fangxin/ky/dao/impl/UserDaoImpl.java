package pers.fangxin.ky.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import pers.fangxin.ky.dao.UserDao;
import pers.fangxin.ky.domin.User;
import pers.fangxin.ky.utils.JDBCUtil02;

public class UserDaoImpl implements UserDao {

	
	public User findUserByName(String username) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		User user = runner.query("SELECT * FROM user where uname = ?", new BeanHandler<User>(User.class), username);	
		return user;
	}

	public void save(User user) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "insert into user(uname,upassword,ugender,uphone,uemail,ubenke,ubaokao,umajor,uyear) values(?,?,?,?,?,?,?,?,?)";
		runner.update(sql, 
				user.getUname(),
				user.getUpassword(),
				user.getUgender(),
				user.getUphone(),
				user.getUemail(),
				user.getUbenke(),
				user.getUbaokao(),
				user.getUmajor(),
				user.getUyear()
		);
				
		
	}

	public User findUserByNameAndPassword(String uname, String upassword) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		User user = runner.query("SELECT * FROM user where uname = ? and upassword = ?", new BeanHandler<User>(User.class), uname,upassword);	
		return user;
	}

}
