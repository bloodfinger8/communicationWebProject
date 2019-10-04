package boardreply.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boardreply.bean.BoardReplyDTO;


public class BoardReplyDAO {
	private static BoardReplyDAO instance;
	private SqlSessionFactory sqlSessionFactory;
	
	public BoardReplyDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static BoardReplyDAO getInstance(){
		if(instance == null){ 
			synchronized(BoardReplyDAO.class){
				instance = new BoardReplyDAO();	
			}
		}
		return instance;
	}

	public int write(Map<String, String> map) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int su = sqlSession.insert("boardreplySQL.write",map);
		sqlSession.commit();
		sqlSession.close();
		
		return su;
	}

	public List<BoardReplyDTO> writeAll(int pseq) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<BoardReplyDTO> list = sqlSession.selectList("boardreplySQL.writeAll",pseq);
		sqlSession.close();
		
		return list;
	}

	public String getTime() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		String logtime = sqlSession.selectOne("boardreplySQL.getTime");
		sqlSession.close();
		
		return logtime;
	}

	public void boardreplyModify(Map<String, String> map) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("boardreplySQL.boardreplyModify", map);
		sqlSession.commit();
		sqlSession.close();
		
	}

	public void boardreplyDelete(int seq_trans) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.delete("boardreplySQL.boardreplyDelete", seq_trans);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	
	
	
	
	

}
