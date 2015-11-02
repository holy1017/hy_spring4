package com.util;

public class HangulConversion {
	 
	//한글 인코딩 타입으로 읽어서 영어 인코딩 타입으로 전환
	public static String toEng(String ko){
		if(ko == null) return null;
		try {
			return new String(ko.getBytes("KSC5601"),"8859_1");
		} catch (Exception e) {
			return ko;
		}
	}
	//영문 인코딩 타입으로 읽어서 한글 인코딩 타입으로 전환
	public static String toKor(String en){
		if(en == null) return null;
		try {
			return new String(en.getBytes("8859_1"),"KSC5601");
		} catch (Exception e) {
			return en;
		}
	}
	public static String toUTF(String en){
		if(en == null) return null;
		try {
			return new String(en.getBytes("8859_1"),"utf-8");
		} catch (Exception e) {
			return en;
		}
	}
}
