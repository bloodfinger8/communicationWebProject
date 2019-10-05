package boardreply.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;
import boardreply.bean.BoardReplyDTO;
import boardreply.dao.BoardReplyDAO;

public class BoardReplyWriteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//데이터
		int pseq = Integer.parseInt(request.getParameter("pseq")); //게시글
		String id = request.getParameter("id"); //게시글 주인 id
		String logId = request.getParameter("logId"); //로그인 id
		String content = request.getParameter("content"); //submit 으로 넘어왔다
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pseq", pseq+"");
		map.put("id", logId);
		map.put("content", content);
		int su = boardreplyDAO.write(map); //댓글 내용 저장
		
		String logTime = boardreplyDAO.getTime();
		
		//모든 댓글의 정보를 가져와 뿌려준다
		List<BoardReplyDTO> list = boardreplyDAO.getAllboardreply(pseq);
		
		
		//원글의 reply 어트리뷰트 증가
		BoardDAO boarDAO = BoardDAO.getInstance();
		boarDAO.replyUp(pseq);
		
		
		//데이터 보내보리자
		
		request.setAttribute("list", list);
		//request.setAttribute("logTime",logTime);
		//request.setAttribute("id",id);
		request.setAttribute("logId",logId);
		//request.setAttribute("seletedId",seletedId);
		//request.setAttribute("content",content);
		//request.setAttribute("pseq",pseq);
		//request.setAttribute("pg",pg);
		 
		return "/boardreply/boardreplyWrite.jsp";
	}

}
