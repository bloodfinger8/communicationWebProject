package kakao.action;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

public class KakaoLoginAction implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String id = request.getParameter("userId");
		String name = request.getParameter("userName");
		String pwd = request.getParameter("password");
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setName(name);
		memberDTO.setId(id);
		memberDTO.setPwd(pwd);
		memberDTO.setGender("");
		memberDTO.setEmail1("");
		memberDTO.setEmail2("");
		memberDTO.setTel1("");
		memberDTO.setTel2("");
		memberDTO.setTel3("");
		memberDTO.setZipcode("");
		memberDTO.setAddr1("");
		memberDTO.setAddr2("");
		
		MemberDAO memberDAO =MemberDAO.getInstance();
		int su = memberDAO.write(memberDTO);
		
		//세션 생성
		HttpSession session = request.getSession();
		session.setAttribute("memName", memberDTO.getName());
		session.setAttribute("memId", id);
		
		
		return "/main/main.jsp";
	}

}
