package boardreply.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import boardreply.dao.BoardReplyDAO;

public class BoardReplyModifiyAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//data
		String modifyText = request.getParameter("modifyText");
		int seq_trans = Integer.parseInt(request.getParameter("seq_trans"));
		
		//db
		BoardReplyDAO boardreplyDAO = BoardReplyDAO.getInstance();
		
		//데이터 보내기
		Map<String, String> map = new HashMap<String, String>();
		map.put("modifyText", modifyText);
		map.put("seq_trans", seq_trans+"");
		
		boardreplyDAO.boardreplyModify(map);
		
		String logTime = boardreplyDAO.getTime();
		//데이터넘기기
		
		request.setAttribute("logTime", logTime);
		request.setAttribute("modifyText", modifyText);
		
		return "/boardreply/boardreplyModify.jsp";
	}

}
