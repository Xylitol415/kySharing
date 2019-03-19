package pers.fangxin.ky.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;

import pers.fangxin.ky.dao.EResourcesDao;
import pers.fangxin.ky.dao.impl.EResourcesDaoImpl;
import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.service.EResourcesService;
import pers.fangxin.ky.utils.JDBCUtil02;

public class EResourcesServiceImpl implements EResourcesService {

	public PageBean<EResources> findEResourcesByPage(int currentPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public List<EResources> findAll() throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		return dao.findAll();
	}

	public void insert(EResources eResources) throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		dao.insert(eResources);
	}

	public void delete(int eid) throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		dao.delete(eid);
	}

	public EResources findEResourcesById(int eid) throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		return dao.findEResourcesById(eid);
	}

	public void update(EResources eResources) throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		dao.update(eResources);
	}

	public List<EResources> searchEResources(String etitle, String ecategory) throws SQLException {
		EResourcesDao dao = new EResourcesDaoImpl();
		return dao.searchEResources(etitle, ecategory);
	}

	public int findCount() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
