package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.dao.BoardDAO;
import boardreply.dao.BoardReplyDAO;

public class BoardDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.boardDelete(seq);
		
		//게시물에 달린 댓글 삭제
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		int su =boardreplyDAO.checkboardreply(seq);
		System.out.println("&&&&&&&& su = " + su);
		//댓글이 존재한다면 지우기
		if(su != 0) {
			boardreplyDAO.withboardreplyDelete(seq);
		}
		
		request.setAttribute("display","/board/boardDelete.jsp");
		return "/main/main.jsp";
		
	}

}
