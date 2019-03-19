package pers.fangxin.ky.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import pers.fangxin.ky.dao.EResourcesDao;
import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.utils.JDBCUtil02;
import pers.fangxin.ky.utils.TextUtils;

public class EResourcesDaoImpl implements EResourcesDao {

	public PageBean<EResources> findEResourcesByPage(int currentPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public List<EResources> findAll() throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "SELECT * FROM eresources";
		List<EResources> list = runner.query(sql, new BeanListHandler<EResources>(EResources.class));
		return list;
	}

	public void insert(EResources eResources) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("insert into eresources values(null,?,?,?,?,null,?)", 
				eResources.getEtitle(),
				eResources.getEcategory(),
				eResources.getElink(),
				eResources.getEtime(),
				eResources.getEuname()
		);

	}

	public void delete(int eid) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("DELETE FROM eresources WHERE eid=?",eid);
	}

	public EResources findEResourcesById(int eid) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		EResources eResources = runner.query("SELECT * FROM eresources WHERE eid = ?", new BeanHandler<EResources>(EResources.class),eid);
		return eResources;
	}

	public void update(EResources eResources) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("UPDATE eresources set ecategory=?,etitle=?,euname=?,etime=?,elink=? where eid=?",
				eResources.getEcategory(),
				eResources.getEtitle(),
				eResources.getEuname(),
				eResources.getEtime(),
				eResources.getElink(),
				eResources.getEid()
				);
	}

	public List<EResources> searchEResources(String etitle, String ecategory) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "SELECT * FROM eresources WHERE 1=1 ";
		List<String> list = new ArrayList<String>();
		
		if(!TextUtils.isEmpty(etitle)){
			sql = sql + "AND etitle like ?";
			list.add("%"+etitle+"%");
		}
		if(!TextUtils.isEmpty(ecategory)){
			sql = sql + "AND ecategory like ?";
			list.add("%"+ecategory+"%");
		}
		return runner.query(sql, new BeanListHandler<EResources>(EResources.class),list.toArray());	
	}

	public int findCount() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
