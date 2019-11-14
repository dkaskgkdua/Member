package com.mf2.vo;
import java.sql.Date;
/*  데이터 빈 클래스 작성
 *  사용 예로 게시판에서 사용되는 정볻르을 데이터 빈이라는 하느이 객쳉 ㅔ저장하게 되고
 *  이 객체를 전달하면 각 정보를 하나씩 전달할 필요가 없으며 한꺼번에 모든 정보가 전달됩니다. 이런 클래스를 DTO, VO라고 한다.
 *  DB에서 만들었던 컬럼명하고 동일하게 프로퍼티움 설정
 * */
public class Member {
	private String id;
	private String pass;
	private String name;
	private Date reg_date;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
}
