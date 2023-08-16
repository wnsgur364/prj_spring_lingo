package com.lingo.app.code;

import java.util.ArrayList;
import java.util.List;


public class Code {

	
	private String seq;
	private Integer delNy;
	private Integer useNy;
	private String name;
	private Integer codegroup_seq;
	
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getUseNy() {
		return useNy;
	}
	public void setUseNy(Integer useNy) {
		this.useNy = useNy;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getcodegroup_seq() {
		return codegroup_seq;
	}
	public void setcodegroup_seq(Integer codegroup_seq) {
		this.codegroup_seq = codegroup_seq;
	}
}
