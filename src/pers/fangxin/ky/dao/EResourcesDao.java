package pers.fangxin.ky.dao;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;

/**
 * ������Ե����������ݱ�ķ���
 * @author Administrator
 *
 */
public interface EResourcesDao {
	
	int PAGE_SIZE=5;
	
	/**
	 * ��ѯ��ҳ�ĵ�����������
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	PageBean<EResources> findEResourcesByPage(int currentPage) throws SQLException;
	
	/**
	 *  ��ѯ���е�����������
	 * @return List<EResources>
	 */
	public List<EResources> findAll()throws SQLException;
	
	/**
	 * ��ӵ�EResources
	 * @param EResources ��Ҫ��ӵ����ݿ��Note����
	 * @throws SQLException
	 */
	void insert(EResources eResources) throws SQLException;
	
	/**
	 * ����IDɾ����������
	 * @param nid
	 * @throws SQLException
	 */
	void delete(int eid) throws SQLException;
	
	/**
	 * ����ID��ѯ��������������Ϣ
	 * @param nid
	 * @return
	 * @throws SQLException
	 */
	EResources findEResourcesById(int eid) throws SQLException;
	
	/**
	 * ���¾�������Ϣ
	 * @param eResources ��Ҫ���µľ���������
	 * @throws SQLException
	 */
	void update(EResources eResources) throws SQLException;
	
	/**
	 * ģ����ѯ������¼ȡѧУ������������ѯ������
	 * @param nschool
	 * @param ncategory
	 * @return ����
	 * @throws SQLException
	 */
	List<EResources> searchEResources(String etitle, String ecategory) throws SQLException;
	
	/**
	 * ��ѯ�ܵļ�¼��
	 * @return
	 * @throws SQLException
	 */
	int findCount() throws SQLException;
}
