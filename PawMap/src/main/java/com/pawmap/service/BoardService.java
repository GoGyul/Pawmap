package com.pawmap.service;

import java.util.HashMap;
import java.util.List;

import com.pawmap.VO.BoardVO;
import com.pawmap.VO.CommentVO;
import com.pawmap.VO.Criteria;

public interface BoardService {

	
	void insertFreeAndNanumBoard(BoardVO vo);

	List<BoardVO> getFreeBoardList(BoardVO vo, Criteria cri);

	BoardVO getFreeBoard(int boardSeq);

	void deleteFreeBoardBySeq(int boardSeq);

	void updateFreeBoardForm(BoardVO vo);

	int selectBoardCount(BoardVO vo);

	void insertReplyForFreeBoard(CommentVO commentVO);

	int getFreeBoardSeq();
	
	List<HashMap<String, Object>> getLatelyBoardListForBoardMain();

//	나눔게시판 리스트
	List<BoardVO> getNanumBoardList(BoardVO vo, Criteria cri);
	
	// 나눔게시판 상세
	BoardVO getNanumBoard(int boardSeq);

//	글 상세조회
	BoardVO getBoardDetail(int boardSeq, String boardType);

	void updateNanumBoardForm(BoardVO vo);

	int getNanumBoardSeq();

	// 나눔게시판 글 삭제
	void deleteNanumBoardBySeq(int boardSeq);

	List<HashMap<String, Object>> getLatelyBoardListForNanumBoardMain();

	int selectNanumBoardCount(BoardVO vo);

	List<HashMap<String, Object>> getLatelyBoardListForShelterBoardMain();


	void insertMedicalRecord(BoardVO vo);

	List<BoardVO> getMyMedicalRecordListById(String userId);

	List<BoardVO> getHospitalMedicalRecordList(String date, String comNum);

	List<HashMap<String, Object>> getSeparateMedicalRecordForClient(String comNum, String reservationDate, String scheduleTime);

	int getMedicalBoardSeq();

	void updateMedicalRecord(BoardVO vo);

	List<BoardVO> getMyMedicalRecordForAllowReview(String userId, String hospitalComNum);

	void updateFreeBoardCnt(int boardSeq);

	//관리자 페이지에서 커뮤니티 게시판 부를때 사용하는 메소드

	List<BoardVO> getCommunityBoardList(BoardVO vo, Criteria cri);
		
	List<HashMap<String, Object>> getLatelyCommunityBoardListForBoardMain();	
	
//	=====================================================
	
	List<HashMap<String, Object>> getLatelyBoardListForShelterBoardMain(int shelterSeq);

	void updateNanumBoardCnt(int boardSeq);

	
}
