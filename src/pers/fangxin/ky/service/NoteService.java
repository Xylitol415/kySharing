package pers.fangxin.ky.service;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;

/**
 * ���Ǿ�����ҵ����淶
 * @author Administrator
 *
 */
public interface NoteService {
	
	
	/**
	 * ��ѯ��ҳ��note����
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	PageBean findNoteByPage(int currentPage) throws SQLException;
	
	
	/**
	 *  ��ѯ���о���������
	 * @return List<Note>
	 */
	public List<Note> findAll()throws SQLException;
	
	/**
	 * ��ӵ�Note
	 * @param note ��Ҫ��ӵ����ݿ��Note����
	 * @throws SQLException
	 */
	void insert(Note note) throws SQLException;
	
	/**
	 * ����IDɾ��������
	 * @param nid
	 * @throws SQLException
	 */
	void delete(int nid) throws SQLException;
	
	/**
	 * ����ID��ѯ������������Ϣ
	 * @param nid
	 * @return
	 * @throws SQLException
	 */
	Note findNoteById(int nid) throws SQLException;
	
	/**
	 * ���¾�������Ϣ
	 * @param note ��Ҫ���µľ���������
	 * @throws SQLException
	 */
	void update(Note note) throws SQLException;
	
	/**
	 * ģ����ѯ������¼ȡѧУ������������ѯ������
	 * @param nschool
	 * @param ncategory
	 * @return ����
	 * @throws SQLException
	 */
	List<Note> searchNote(String nschool, String ncategory) throws SQLException; 
}
