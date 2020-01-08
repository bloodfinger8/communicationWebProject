package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class BoardSearchAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String searchOption = request.getParameter("searchOption");
		String keyword = request.getParameter("keyword");
		
		System.out.println(searchOption + " &&  " + keyword);
		
		
		request.setAttribute("display","/board/boardList.jsp");
		return "/main/main.jsp";
	}

}
