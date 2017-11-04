package com.action.board;


//보여줄 페이지의 정보가 저장된 class
public class PageInfo {
	int count;	//총 게시글 수
	int page;	//현재 페이지
	int firstPage;	//화면에 보일 페이지의 첫번째 숫자
	int endPage;	//화면 마지막부분에 보일 페이지의 마지막숫자
	int prevPage;	//이전페이지 번호
	int nextPage;	//다음페이지 번호
	int start;	//시작 레코드
	int end;	//끝의 레코두
	int maxPage;	//최대 표시되는 페이지 수
	
	PageInfo(int count, int page){
		this.count = count;
		this.page = page;
		maxPage = (count-1)/10 + 1;
	}
	
	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getFirstPage() {
		firstPage = page-2;
		if(firstPage <= 0) {
			firstPage = 1;
			endPage = 5;
			if(endPage > maxPage) {
				endPage = maxPage;
			}
		}
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getEndPage() {
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

}
