package pers.fangxin.ky.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import pers.fangxin.ky.dao.NoteDao;
import pers.fangxin.ky.domin.Note;
import pers.fangxin.ky.utils.JDBCUtil02;
import pers.fangxin.ky.utils.TextUtils;
/**
 * ����NoteDao��ʵ�֣����ǰ�涨��Ĺ淶�����������ʵ��
 * @author Administrator
 *
 */
public class NoteDaoImpl implements NoteDao {

	/**
	 * ��ѯ���еľ�����Note
	 * @throws SQLException 
	 */
	public List<Note> findAll() throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "SELECT * FROM note";
		List<Note> list = runner.query(sql, new BeanListHandler<Note>(Note.class));
		return list;
	}

	public void insert(Note note) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("insert into note values(null,?,?,?,?,null,?,?,?,?)", 
				note.getNtitle(),
				note.getNcategory(),
				note.getNcontent(),
				note.getNtime(),
				note.getNuname(),
				note.getNschool(),
				note.getNumajor(),
				note.getNscore()
		);
	}

	public void delete(int nid) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("DELETE FROM note WHERE nid=?",nid);
		
	}

	public Note findNoteById(int nid) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		Note note = runner.query("SELECT * FROM note WHERE nid = ?", new BeanHandler<Note>(Note.class),nid);
		return note;
	}

	public void update(Note note) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		runner.update("UPDATE note set ncategory=?,ntitle=?,ncontent=?,ntime=?,nuname=?,nschool=?,numajor=?,nscore=? where nid=?",			
				note.getNcategory(),
				note.getNtitle(),
				note.getNcontent(),
				note.getNtime(),
				note.getNuname(),
				note.getNschool(),
				note.getNumajor(),
				note.getNscore(),
				note.getNid()
				);
		
	}

	public List<Note> searchNote(String nschool, String ncategory) throws SQLException {
//		System.out.println("����Ҫִ��ģ����ѯ�ˣ��յ���nschool="+nschool+" ,ncategory="+ncategory);
		
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		String sql = "SELECT * FROM note WHERE 1=1 ";
		List<String> list = new ArrayList<String>();
		
		if(!TextUtils.isEmpty(nschool)){
			sql = sql + "AND nschool like ?";
			list.add("%"+nschool+"%");
		}
		if(!TextUtils.isEmpty(ncategory)){
			sql = sql + "AND ncategory like ?";
			list.add("%"+ncategory+"%");
		}
		return runner.query(sql, new BeanListHandler<Note>(Note.class),list.toArray());	}

	public List<Note> findNoteByPage(int currentPage) throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		// ��һ���ʺŴ���һҳ���ض�������¼���ڶ����ʺŴ�������ǰ�����������
		List<Note> list = runner.query("SELECT * FROM note LIMIT ? OFFSET ?", new BeanListHandler<Note>(Note.class),PAGE_SIZE,(currentPage-1)*PAGE_SIZE);
		return list;
	}

	public int findCount() throws SQLException {
		QueryRunner runner = new QueryRunner(JDBCUtil02.getDataSource());
		// �ۺϺ����Ľ�������� ScalarHandler()
		Long result = (Long)runner.query("SELECT COUNT(*) FROM note", new ScalarHandler());
		return result.intValue();
	}

}
