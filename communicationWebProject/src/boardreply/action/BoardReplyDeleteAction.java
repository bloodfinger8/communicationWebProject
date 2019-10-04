package boardreply.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import boardreply.dao.BoardReplyDAO;

public class BoardReplyDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq_trans = Integer.parseInt(request.getParameter("seq_trans"));
		
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		boardreplyDAO.boardreplyDelete(seq_trans);
		
		
		
		return "/boardreply/boardreplyDelete.jsp";
	}

}
