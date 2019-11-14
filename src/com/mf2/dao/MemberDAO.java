package com.mf2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mf2.vo.Member;

/* DAO(Data Access Object) Ŭ����
 * - �����ͺ��̽��� �����Ͽ� ���ڵ��� �߰�, ����, ���� �۾��� �̷������ Ŭ�����̴�.
 * - � Action Ŭ������ ȣ��Ǵ��� �׿� �ش��ϴ� �����ͺ��̽� ���� ó����
 *   DAO Ŭ�������� �̷������ �ȴ�.
 *   
 *     �Ķ���ͷ� ���� �ֵ��� member�� ó��
    daoŬ�������� insert�� �޼ҵ� ȣ��
    dao ���� db�� ó��
    ���Գ�¥�� ���� sysdate
 * */
public class MemberDAO {
	DataSource ds;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	int result;
	
	public MemberDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB���� ���� : " + ex);
		}
	}
	
	
	StringBuilder sql = new StringBuilder();
	
	
	public int insert(Member member) throws SQLException {
		try {
			conn = ds.getConnection();
			System.out.println("getConnection");
			
			pstmt = conn.prepareStatement("INSERT INTO cookie_member VALUES (?, ?, ?, sysdate)");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
			
			result = pstmt.executeUpdate();
			
		} finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public ArrayList<Member> user_info_select() {
		Member member;
		ArrayList<Member> memList = new ArrayList<Member>();
		try {
			conn = ds.getConnection();
			System.out.println("alluserConnection");
			
			pstmt = conn.prepareStatement("select * from cookie_member");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				member = new Member();
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setReg_date(rs.getDate("reg_date"));
				
				memList.add(member);
			}
			
		} catch(SQLException e) {
			System.out.println("SQL����");
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		return memList;
	}
	public Member member_info(String id) {
		Member mem = new Member();
		
		try {
			conn = ds.getConnection();
			System.out.println("editConnection");
			
			pstmt = conn.prepareStatement("select * from cookie_member where id = ?");
			pstmt.setString(1,  id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mem.setId(rs.getString("id"));
				mem.setPass(rs.getString("pass"));
				mem.setName(rs.getString("name"));
				mem.setReg_date(rs.getDate("reg_date"));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		
		
		return mem;
	}
	public int loginSelect(String id, String pass)  {
		
		try {
			
			
			conn = ds.getConnection();
			System.out.println("selectConnection");
			
			pstmt = conn.prepareStatement("select * from cookie_member where id = ?");
			pstmt.setString(1, id);
			//pstmt.setString(2, password);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(2).equals(pass)) {
					result = 1; //���̵�� ��� ��ġ
				} else {
					result = 0; // ��й�ȣ ��ġ X
				}
			} else {
				result = -1; // ���̵� ���� ����
			}
			
			/*
			if(rs.next()) {
				mem.setId(rs.getString("id"));
				mem.setPass(rs.getString("pass"));
				mem.setName(rs.getString("name"));
				mem.setReg_date(rs.getDate("reg_date"));
			}
			*/
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		return result;
	}
	
}
