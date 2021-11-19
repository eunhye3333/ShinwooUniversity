package member.service;

import java.sql.Connection;
import static common.JDBCTemplate.*;
import member.dao.MemberDAO;
import member.vo.Member;

public class MemberService {
	private MemberDAO mDAO = new MemberDAO();
	
	public Member loginMember(String memberId, String memberPwd) {
		Connection conn = getConnection();
		
		Member loginUser = mDAO.loginMember(memberId, memberPwd, conn);
		
		close(conn);
		
		return loginUser;
		
	}

	public String isFirstLogin(String memberId) {
		Connection conn = getConnection();
		
		String status = mDAO.isFirstLogin(memberId, conn);
		
		close(conn);
		return status;
	}

	public int firstUpdate(Member m) {
		Connection conn = getConnection();
		
		int result = mDAO.firstUpdate(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
		
	public int updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = mDAO.updateMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public int updatePwd(Member m) {
		Connection conn = getConnection();
		
		int result = mDAO.updatePwd(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	public int checkPwd(String userId, String userPwd) {
		Connection conn = getConnection();
		
		int result = mDAO.checkPwd(conn, userId, userPwd);
		
		close(conn);
		return result;
	}

	public Member selectMember(String memberId) {
		Connection conn = getConnection();
		
		Member m = mDAO.selectMember(conn, memberId);
		
		close(conn);
		
		return m;
	}

	public String findPwd(String memberId) {
		Connection conn = getConnection();
		String email = mDAO.findPwd(conn, memberId);
		
		if(email != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return email;
	}

	public int checkEmail(String userEmail) {
		Connection conn = getConnection();
		
		int result = mDAO.checkEmail(conn, userEmail);
		
		close(conn);
		return result;
	}
	
	

}
