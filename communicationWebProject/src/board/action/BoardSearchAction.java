package board.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.dao.BoardDAO;

public class BoardSearchAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String searchOption = request.getParameter("searchOption");
		String keyword = request.getParameter("keyword");
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		int endNum = pg * 5; //한페이지당 5개
		int startNum = endNum - 4;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption" , searchOption);
		map.put("keyword" , keyword);
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		List<BoardDTO> list = boardDAO.boardSearch(map);
		
		
		BoardPaging boardPaging = new BoardPaging();
		int su = boardDAO.getSearchTotalA(map); //총 글수
		boardPaging.setCurrentPage(pg);
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.setTotalA(su);
		boardPaging.makeSearchPagingHTML();
		
		request.setAttribute("list", list);
		request.setAttribute("boardPaging", boardPaging);
		request.setAttribute("searchOption", searchOption);
		request.setAttribute("keyword", keyword);
		request.setAttribute("pg", pg);
		
		
		request.setAttribute("display","/board/boardList.jsp");
		return "/main/main.jsp";
	}

}
