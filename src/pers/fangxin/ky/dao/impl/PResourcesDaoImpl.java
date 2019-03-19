package pers.fangxin.ky.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import pers.fangxin.ky.dao.PResourcesDao;
import pers.fangxin.ky.domin.PResources;
import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.utils.JDBCUtil02;

public class PResourcesDaoImpl implements PResourcesDao {

	public PageBean<PResources> findEResourcesByPage(int currentPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PResources> findAll() throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "SELECT * FROM presources";
		List<PResources> list = runner.query(sql, new BeanListHandler<PResources>(PResources.class));
		return list;
	}

	public void insert(PResources pResources) throws SQLException {
		// TODO Auto-generated method stub

	}

	public void delete(int pid) throws SQLException {
		// TODO Auto-generated method stub

	}

	public PResources findEResourcesById(int pid) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(PResources pResources) throws SQLException {
		// TODO Auto-generated method stub

	}

	public List<PResources> searchEResources(String pinfo, String pcategory) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public int findCount() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
