package pers.fangxin.ky.dao;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.EResources;
import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;

/**
 * 这是针对电子资料数据表的访问
 * @author Administrator
 *
 */
public interface EResourcesDao {
	
	int PAGE_SIZE=5;
	
	/**
	 * 查询当页的电子资料数据
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	PageBean<EResources> findEResourcesByPage(int currentPage) throws SQLException;
	
	/**
	 *  查询所有电子资料数据
	 * @return List<EResources>
	 */
	public List<EResources> findAll()throws SQLException;
	
	/**
	 * 添加到EResources
	 * @param EResources 需要添加到数据库的Note对象
	 * @throws SQLException
	 */
	void insert(EResources eResources) throws SQLException;
	
	/**
	 * 根据ID删除电子资料
	 * @param nid
	 * @throws SQLException
	 */
	void delete(int eid) throws SQLException;
	
	/**
	 * 根据ID查询单个电子资料信息
	 * @param nid
	 * @return
	 * @throws SQLException
	 */
	EResources findEResourcesById(int eid) throws SQLException;
	
	/**
	 * 更新经验贴信息
	 * @param eResources 需要更新的经验贴数据
	 * @throws SQLException
	 */
	void update(EResources eResources) throws SQLException;
	
	/**
	 * 模糊查询，根据录取学校，或经验贴类别查询经验贴
	 * @param nschool
	 * @param ncategory
	 * @return 集合
	 * @throws SQLException
	 */
	List<EResources> searchEResources(String etitle, String ecategory) throws SQLException;
	
	/**
	 * 查询总的记录数
	 * @return
	 * @throws SQLException
	 */
	int findCount() throws SQLException;
}
