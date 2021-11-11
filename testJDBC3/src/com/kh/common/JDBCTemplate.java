package com.kh.common;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	private static Connection conn = null;
	
	private JDBCTemplate() {} // �����ڸ� private���� ���� �ܺο��� ��ü ������ �� �� ������ ��
	// �⺻ �����ڸ� private�� �Ͽ� ��ü�� ������ �� ���� �ϰ�, ��� �ʵ�� �޼ҵ带 public static���� ���� �ϴ� �� : �̱�������
	// ���� ���Ǵ� Ŭ������ ���� ��ü�� ����� �޸𸮿� ������ ��. ���� ���� ����ϴ� ��ü�� ��ü�� �������� �ʰ� ����ϱ� ���� �������� ��ȵ�.(static ������ �� �� ���� �����ǵ���)
	// JDBCTemplate�� �Ϻ��� �̱��� ������ �ƴ� -> �Ϻ��� �̱��� ������ ��� ����� public static�̾�� �ϴµ� private static ���
	
	// 1, 2��
	public static Connection getConnection() { // => DriverManager.getConnection()�� �츮 ���忡 ���� ����� ���� �޼ҵ�� ����

		if(conn == null) {
			try {
				Properties prop = new Properties();
				prop.load(new FileReader("driver.properties")); // properties ���Ͽ� �ִ� �����͸� �о�ͼ� Properties ��ü�� �����ϴ� �޼ҵ�
				// ������ �о�;� �ϱ� ������ �Ű������� ��Ʈ���� ��
				
//				Class.forName("oracle.jdbc.driver.OracleDriver");
//				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "MEMBER", "MEMBER");
				// �̷��� ���� �ִ� ���� �ƴ϶� ���Ͽ� �ִ� ���� ������ �ͼ� ����� �� ���� => ���������� ����
				// ������ �̿��Ͽ� ���� ������ ���� �� : ������Ƽ�� => Ű�� ���� String Ÿ�����θ� ���ѵ� Map �÷���
				
				// ������Ƽ �̿�
				Class.forName(prop.getProperty("driver"));
				conn = DriverManager.getConnection(prop.getProperty("url"),
												   prop.getProperty("user"),
												   prop.getProperty("password"));
				
				conn.setAutoCommit(false);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		return conn;
	}
	
	
	// 4��
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) { // ��ü�� �����鼭 ������ �ʾ��� ��
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 5��
	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		// �Ű������� Ÿ���� �޶� �����ε��� �����
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
// PreparedStatement�� close �޼ҵ带 �������� ���� 
//	-> PreparedStatement�� Statement�� ��ӹް� �ֱ� ������ �� �޼ҵ忡�� ���� ó�� ����
//  -> Statement�� PreparedStatement�� ���� ���� �� ���� (�������� ����� : �θ� ������ �ڽı��� ���� ������ ��)
//	-> �Ʒ� stmt.close()������ PreparedStatement�� ������ �´ٰ� ���� �� ���� ���ε��� �����

}
