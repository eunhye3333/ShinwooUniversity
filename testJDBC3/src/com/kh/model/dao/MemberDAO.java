package com.kh.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

public class MemberDAO {
	
	private Properties prop = null;
	
	public MemberDAO() {
		prop = new Properties();
		try {
			prop.load(new FileReader("query.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertMember(Connection conn) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			String query = prop.getProperty("insertMember"); // ������Ƽ ���Ϸ� ���� ����
			pstmt = conn.prepareStatement(query);
			
			String[] department = {"������а�", "������а�", "ö�а�", "���������а�", "�ɸ��а�", "�����а�", "�濵�а�", "�����а�", "ȭ�а�", "������а�", "�����а�", "�ż�����а�", "������а�", "���ð��а�", "��ȸ�а�", "���а�", "�����а�", "ü���а�", "ġ���а�"};
			
			int num = 100;
			
			for(int i = 0; i < department.length; i++) {
				for(int j = 0; j < 10; j++) {
					pstmt.setString(1, entYear() + num);
					pstmt.setString(2, year() + month() + day());
					pstmt.setString(3, randomHangulName());
					pstmt.setString(4, department[i]); 
					result = pstmt.executeUpdate();
					
					num++;
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public String year() {
		String year = Integer.toString((int)(Math.random() * (2002 - 1996 + 1) + 1996));
		return year;
	}
	
	public String entYear() {
		String year = Integer.toString((int)(Math.random() * (2021 - 2014 + 1) + 2014));
		return year;
	}
	
	public String month() {
		int m = (int)(Math.random() * (12 - 1 + 1) + 1);
		String month = "";
		if(m < 10) {
			month = "0";
		}
		
		month += Integer.toString(m);
		
		return month;
	}
	
	public String day() {
		int d = (int)(Math.random() * (31 - 1 + 1) + 1);
		
		
		String day = "";
		
		
		if(d < 10) {
			day = "0";
		}
		
		day += Integer.toString(d);
		
		return day;
	}
	
	public String randomHangulName() {
	    List<String> �� = Arrays.asList("��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "Ȳ", "��",
	        "��", "��", "��", "ȫ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ä", "��", "õ", "��", "��", "��", "��", "��", "��", "��", "��", 
	        "��", "��");
	    List<String> �̸� = Arrays.asList("��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", 
	        "��", "��", "â", "ä", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
	        "��", "ȣ", "ȫ", "ȭ", "ȯ", "ȸ", "ȿ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ȥ", "Ȳ", "��", "��", "��", "��",
	        "��", "��", "��", "Ź", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", 
	        "��");
	    Collections.shuffle(��);
	    Collections.shuffle(�̸�);
	    return ��.get(0) + �̸�.get(0) + �̸�.get(1);
	  }

}
