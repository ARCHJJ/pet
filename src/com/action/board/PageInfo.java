package com.action.board;


//보여줄 페이지의 정보가 저장된 class
public class PageInfo {
	int count;	//총 게시글 수
	int page;
	int start;
	int end;
	
	PageInfo(int count, int page){
		this.count = count;
		this.page = page;
	}
	
	public PageInfo getPageInfo() {
		return this;
	}
	
	public int getMaxPage() {
		return count/10 + 1;
	}
	
	
}
