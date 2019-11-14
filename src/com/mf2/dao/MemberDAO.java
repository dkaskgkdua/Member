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

/* DAO(Data Access Object) 클래스
 * - 데이터베이스와 연동하여 레코드의 추가, 수정, 삭제 작업이 이루어지는 클래스이다.
 * - 어떤 Action 클래스가 호출되더라도 그에 해당하는 데이터베이스 연동 처리는
 *   DAO 클래스에서 이루어지게 된다.
 *   
 *     파라미터로 들어온 애들을 member로 처리
    dao클래스에서 insert로 메소드 호출
    dao 에서 db로 처리
    가입날짜는 현재 sysdate
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
			System.out.println("DB연결 실패 : " + ex);
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
			System.out.println("SQL오류");
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
					result = 1; //아이디와 비번 일치
				} else {
					result = 0; // 비밀번호 일치 X
				}
			} else {
				result = -1; // 아이디가 존재 안함
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
