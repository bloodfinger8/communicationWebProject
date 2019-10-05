package boardreply.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;
import boardreply.dao.BoardReplyDAO;

public class BoardReplyDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq_trans = Integer.parseInt(request.getParameter("seq_trans"));
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		
		
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		boardreplyDAO.boardreplyDelete(seq_trans);
		
		//원글의 reply 어트리뷰트 줄이기
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.replyDown(pseq);
		
		return "/boardreply/boardreplyDelete.jsp";
	}

}
