package pers.fangxin.ky.service.impl;

import java.sql.SQLException;
import java.util.List;

import pers.fangxin.ky.dao.NoteDao;
import pers.fangxin.ky.dao.impl.NoteDaoImpl;
import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.domin.PageBean;
import pers.fangxin.ky.service.NoteService;
/**
 * ���Ǿ�����ҵ��ʵ��
 * @author Administrator
 *
 */
public class NoteServiceImpl implements NoteService {

	public List<Note> findAll() throws SQLException {
		NoteDao dao = new NoteDaoImpl();	
		return dao.findAll();
	}

	public void insert(Note note) throws SQLException {
		NoteDao dao = new NoteDaoImpl();
		dao.insert(note);	
	}

	public void delete(int nid) throws SQLException {
		NoteDao dao = new NoteDaoImpl();
		dao.delete(nid);
		
	}

	public Note findNoteById(int nid) throws SQLException {
		NoteDao dao = new NoteDaoImpl();
		return dao.findNoteById(nid);
	}

	public void update(Note note) throws SQLException {
		NoteDao dao = new NoteDaoImpl();
		dao.update(note);
		
	}

	public List<Note> searchNote(String nschool, String ncategory) throws SQLException {
		NoteDao dao = new NoteDaoImpl();
		return dao.searchNote(nschool, ncategory);
	}

	public PageBean findNoteByPage(int currentPage) throws SQLException {
		//��װ��ҳ�ĸ�ҳ����
		PageBean<Note> pageBean = new PageBean<Note>();
		pageBean.setCurrentPage(currentPage); // ���õ�ǰҳ
		int pageSize = NoteDao.PAGE_SIZE;
		pageBean.setPageSize(pageSize); // ����ÿҳ��ʾ��������¼
		NoteDao dao = new NoteDaoImpl();
		List<Note> list = dao.findNoteByPage(currentPage);
		pageBean.setList(list); // ������һҳ��note����
		// �ܼ�¼������ҳ��
		int count = dao.findCount(); 
		pageBean.setTotalSize(count); // �����ܼ�¼��
		pageBean.setTotalPage(count%pageSize==0 ? count / pageSize : (count/pageSize) + 1);
		return pageBean;
	}

}
