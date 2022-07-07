package com.test;

import java.util.ArrayList;

public class TestDAO {
	public int chk(String id,String pwd) {
		System.out.println("id : "+id);
		System.out.println("pwd : "+pwd);
		return 0;
	}
	
	public TestDTO getUser(String id) {
		System.out.println("id : "+id);
		TestDTO dto = new TestDTO();
		dto.setId("aaa");
		dto.setPwd("1234");
		dto.setName("홍길동");
		
		return dto;
	}
	
	public ArrayList<TestDTO> all(){
		ArrayList<TestDTO> list = new ArrayList<TestDTO>();
		
		for(int i =0; i<5; i++) {
			TestDTO dto = new TestDTO();
			dto.setId("aaa : "+i);
			dto.setPwd("1234 : "+i);
			dto.setName("홍길동 : "+i);
			list.add(dto);
		}
		return list;
	}
}
