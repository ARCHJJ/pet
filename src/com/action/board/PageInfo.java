package com.action.board;


//보여줄 페이지의 정보가 저장된 class
public class PageInfo {
	int count;	//총 게시글 수
	int page;	//현재 페이지
	int firstPage;	//화면에 보일 페이지의 첫번째 숫자
	int endPage;	//화면 마지막부분에 보일 페이지의 마지막숫자
	int prevPage;	//이전페이지 번호
	int nextPage;	//다음페이지 번호
	int maxPage;	//최대 표시되는 페이지 수
	
	public PageInfo(int count, int page){
		this.count = count;
		this.page = page;
		prevPage = page-1;
		nextPage = page+1;
		maxPage = (count-1)/10 + 1;
	}
	
	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getFirstPage() {
		if(page % 5 != 0)
			firstPage = (5*(int) Math.floor(page/5)) + 1;
		else {
			firstPage = ((int) Math.floor(page/5)-1) * 5 + 1;
		}
		endPage = firstPage+4;
		if(endPage > maxPage) {
			endPage = maxPage;
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
		if(prevPage <= 0) {
			prevPage = 1;
		}
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		if(nextPage > maxPage) {
			nextPage = maxPage;
		}
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

}
