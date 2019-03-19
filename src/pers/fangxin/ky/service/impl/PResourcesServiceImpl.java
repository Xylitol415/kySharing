package pers.fangxin.ky.service.impl;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.dao.PResourcesDao;
import pers.fangxin.ky.dao.impl.PResourcesDaoImpl;
import pers.fangxin.ky.domin.PResources;
import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.service.PResourcesService;

public class PResourcesServiceImpl implements PResourcesService {

	public PageBean<PResources> findEResourcesByPage(int currentPage) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PResources> findAll() throws SQLException {
		PResourcesDao dao = new PResourcesDaoImpl();
		return dao.findAll();
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
