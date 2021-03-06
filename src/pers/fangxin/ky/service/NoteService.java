package pers.fangxin.ky.service;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;

/**
 * 这是经验贴业务处理规范
 * @author Administrator
 *
 */
public interface NoteService {
	
	
	/**
	 * 查询当页的note数据
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	PageBean findNoteByPage(int currentPage) throws SQLException;
	
	
	/**
	 *  查询所有经验贴数据
	 * @return List<Note>
	 */
	public List<Note> findAll()throws SQLException;
	
	/**
	 * 添加到Note
	 * @param note 需要添加到数据库的Note对象
	 * @throws SQLException
	 */
	void insert(Note note) throws SQLException;
	
	/**
	 * 根据ID删除经验贴
	 * @param nid
	 * @throws SQLException
	 */
	void delete(int nid) throws SQLException;
	
	/**
	 * 根据ID查询单个经验贴信息
	 * @param nid
	 * @return
	 * @throws SQLException
	 */
	Note findNoteById(int nid) throws SQLException;
	
	/**
	 * 更新经验贴信息
	 * @param note 需要更新的经验贴数据
	 * @throws SQLException
	 */
	void update(Note note) throws SQLException;
	
	/**
	 * 模糊查询，根据录取学校，或经验贴类别查询经验贴
	 * @param nschool
	 * @param ncategory
	 * @return 集合
	 * @throws SQLException
	 */
	List<Note> searchNote(String nschool, String ncategory) throws SQLException; 
}
