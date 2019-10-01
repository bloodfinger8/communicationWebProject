package boardreply.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import boardreply.dao.BoardReplyDAO;

public class BoardReplyWriteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//데이터
		int pseq = Integer.parseInt(request.getParameter("pseq"));
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		int pg = Integer.parseInt(request.getParameter("pg"));
		//DB
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pseq", pseq+"");
		map.put("id", id);
		map.put("content", content);
		int su = boardreplyDAO.write(map); //데이터 저장
		
		
		
		//데이터 보내보리자
		
		request.setAttribute("pseq",pseq);
		request.setAttribute("pg",pg);
		request.setAttribute("display","/boardreply/boardreplyWrite.jsp");
		 
		return "/main/main.jsp";
	}

}
