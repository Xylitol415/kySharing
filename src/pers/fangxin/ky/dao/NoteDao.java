package pers.fangxin.ky.dao;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.domin.Note;

/**
 * ������Ծ��������ݱ�ķ���
 * @author Administrator
 *
 */
public interface NoteDao {
	
	int PAGE_SIZE=5;
	
	/**
	 * ��ѯ��ҳ��note����
	 * @param currentPage
	 * @return
	 * @throws SQLException
	 */
	List<Note> findNoteByPage(int currentPage) throws SQLException;
	
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
	
	/**
	 * ��ѯ�ܵļ�¼��
	 * @return
	 * @throws SQLException
	 */
	int findCount() throws SQLException;
}
