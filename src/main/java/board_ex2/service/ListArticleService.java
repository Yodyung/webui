package board_ex2.service;

import java.util.List;

import board_ex2.model.*;

public class ListArticleService {
	private static ListArticleService instance;
	public static ListArticleService getInstance()  throws BoardException{
		if( instance == null )
		{
			instance = new ListArticleService();
		}
		return instance;
	}
	
	public List <BoardVO> getArticleList() throws BoardException
	{
		 List <BoardVO> mList = BoardDao.getInstance().selectList();			
		return mList;
	}
		
}
