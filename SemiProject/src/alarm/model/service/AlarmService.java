package alarm.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import alarm.model.vo.Alarm;
import bookRental.model.vo.BookRental;
import member.dao.MemberDAO;
import review.model.vo.ReviewBook;


public class AlarmDAO {
	private Properties prop = null;

	public AlarmDAO() {
		prop = new Properties();

		String fileName = AlarmDAO.class.getResource("/sql/alarm/alarm-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Alarm> selectAlarm(Connection conn, String mId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Alarm> aList = null;
		
		String query = prop.getProperty("alarmList");
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, mId);
			
			aList = new ArrayList<Alarm>();
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Alarm a = new Alarm(rset.getInt("alarm_no"),
									rset.getInt("alarm_pt"),
									rset.getString("alarm_cont"),
									rset.getString("member_id"),
									rset.getString("status"));
				aList.add(a);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return aList;
	}

	public int confirmAlarm(Connection conn, int alarmNo) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("confirmAlarm");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, alarmNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int returnAlarm(Connection conn, ArrayList<BookRental> list) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("returnAlarm");

		try {
			for(int i = 0; i<list.size(); i++) {
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, "�����Ͻ� " + list.get(i).getBookTitle() + "�� �ڵ����� �ݳ��Ǿ����ϴ�.");
				pstmt.setString(2, list.get(i).getMemberId());
				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public int insertAlarm1(Connection conn, String writer, String bookName) {
		PreparedStatement pstmt = null;
		int result = 0;
		String reason = "��û�Ͻ� ����" + bookName + "�� �����Ǿ����ϴ�.";
		
		String query = prop.getProperty("rejectBookAlarm");
		
		try {			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,reason);
			pstmt.setString(2, writer);
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int insertAlarm2(Connection conn, String writer, String bookName) {
		PreparedStatement pstmt = null;
		int result = 0;
		String reason = "��û�Ͻ� å" + bookName + "�� ���εǾ����ϴ�.";
		
		String query = prop.getProperty("rejectBookAlarm");
		try {
			pstmt = conn.prepareStatement(query);		
			pstmt.setString(1, reason);
			pstmt.setString(2, writer);
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
