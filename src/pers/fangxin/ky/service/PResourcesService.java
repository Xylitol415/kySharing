package pers.fangxin.ky.service;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.PResources;
import pers.fangxin.ky.domin.PageBean;

public interface PResourcesService {
	/**
	 * ��ѯ��ҳ��ֽ����������
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	PageBean<PResources> findEResourcesByPage(int currentPage) throws SQLException;
	
	/**
	 *  ��ѯ���е�����������
	 * @return List<EResources>
	 */
	public List<PResources> findAll()throws SQLException;
	
	/**
	 * ��ӵ�EResources
	 * @param EResources ��Ҫ��ӵ����ݿ��Note����
	 * @throws SQLException
	 */
	void insert(PResources pResources) throws SQLException;
	
	/**
	 * ����IDɾ����������
	 * @param nid
	 * @throws SQLException
	 */
	void delete(int pid) throws SQLException;
	
	/**
	 * ����ID��ѯ��������������Ϣ
	 * @param nid
	 * @return
	 * @throws SQLException
	 */
	PResources findEResourcesById(int pid) throws SQLException;
	
	/**
	 * ���¾�������Ϣ
	 * @param eResources ��Ҫ���µľ���������
	 * @throws SQLException
	 */
	void update(PResources pResources) throws SQLException;
	
	/**
	 * ģ����ѯ������¼ȡѧУ������������ѯ������
	 * @param nschool
	 * @param ncategory
	 * @return ����
	 * @throws SQLException
	 */
	List<PResources> searchEResources(String pinfo, String pcategory) throws SQLException;
	
	/**
	 * ��ѯ�ܵļ�¼��
	 * @return
	 * @throws SQLException
	 */
	int findCount() throws SQLException;
}
