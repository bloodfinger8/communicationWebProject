package kakao.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import member.dao.MemberDAO;

public class CheckDuplicationAction  implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id = request.getParameter("userId");
		String name = request.getParameter("userName");
		System.out.println("제발루!!!!!!!!!!!!!!!!"+id +" " + name);
		MemberDAO memberDAO =MemberDAO.getInstance();
		boolean su = memberDAO.isExistId(id);
		System.out.println("su :" + su);
		if(su) {
			//아이디가 존재한다면 세션을 만들어 줘라
			HttpSession session = request.getSession();
			session.setAttribute("memName", name);
			session.setAttribute("memId", id);
			
			request.setAttribute("result", "ok");
		}else {
			//아이디가 없다면
			request.setAttribute("result", "no");
		}
		
		return "/kakao/checkDuplication.jsp";
		
	}
	
}
