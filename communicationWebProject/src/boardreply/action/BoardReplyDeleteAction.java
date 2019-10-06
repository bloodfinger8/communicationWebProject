package boardreply.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;
import boardreply.bean.BoardReplyDTO;
import boardreply.dao.BoardReplyDAO;

public class BoardReplyDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq_trans = Integer.parseInt(request.getParameter("seq_trans"));
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		String logId = request.getParameter("logId");
		
		
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		boardreplyDAO.boardreplyDelete(seq_trans);
		
		List<BoardReplyDTO> list = boardreplyDAO.getAllboardreply(pseq);
		
		//원글의 reply 어트리뷰트 줄이기
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.replyDown(pseq);
		
		request.setAttribute("list", list);
		request.setAttribute("logId", logId);
		
		return "/boardreply/boardreplyDelete.jsp";
	}

}
