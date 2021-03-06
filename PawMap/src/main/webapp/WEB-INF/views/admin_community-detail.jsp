<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="layout/admin_header.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!-- jstl 함수사용을 위한 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!--관리자의 커뮤니티 관리 페이지 시작...-->
            <form id="listForm" action="getCommunityBoardList" name="POST">
              <div class="tbl-header"> 
                <div class="row row-adminindex">
                  <div>
                    <h1 class="adminpagetoph1" style=" margin-top: 0px;">커뮤니티 게시판 관리</h1>
                  </div>
                  <div>
                    <h1 class="adminpagetoph1" style="margin-left: 20px; margin-right: 20px; margin-top: 0px"> - </h1>
                  </div>
                  <div>  
                    <h1 class="adminpagetoph1" style="margin-top: 0px;">자유게시판</h1><!--select tag에 있는 option들이 하기에 버튼을 누르면 자연스럽게 이 영역도 바뀌어야 함. dec 7th 19:38pm-->
                  </div>
                </div>
              </div>
                <!-- search 영역 시작-->
                <div class="row tbl-header">
                  <div class="main-search-input-wrap">
                    <table>
                      <tr>
                        <!--게시판 select 창 시작-->
                        <td style="padding-right: 10px;">
                          <select class="main-search-input-select fl-wrap main-search-input-item" style="border-style:none;">
                            <option>-관리할 게시판을 선택하세요-</option>
                            <option>공지 게시판</option>
                            <option>나눔 게시판</option>
                            <option>자유 게시판</option>
                          </select>
                        </td>
                        <!--select 창 끝-->
                        <!--search 타입 영역 시작-->
                        <td style="padding-left: 10px;">
                          <div class="main-search-input fl-wrap">
                            <div class="main-search-input-item"> 
                                <input type="text" value="" placeholder="검색창입니다."> 
                            </div> 
                            <!-- search 타입 영역 끝-->
                            <!-- search 버튼 시작 -->
                          <button class="main-search-button">Search</button>
                          <!-- search 버튼 끝 -->
                        </div>
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!--search 영역 finished...-->
        <!--커뮤니티 게시판 관리 리스트 시작--><!--목록 영역...-->
    <div id="associatedvetcenterlist" class="adminpagetablediv">
        <table class="table-striped table-hover adminpagetable">
          <colgroup>
            <col>
            <col>
            <col>
            <col>
            <col>
          </colgroup>
          <thead class="admintablehead">
            <tr>
                <th class="admin-boardseq">#</th> <!--admin-userseq는 shelter_Seq동일-->
                <th class="admin-boardid">작성자 아이디</th> <!--admin-username은 shelter_name과 동일-->
                <th class="admin-title">제목</th> <!--admin-address은 shelter_address와 동일-->
                <th class="admin-regdate">등록일</th> <!--admin-usertelnum은 shelter_tel과 동일-->
                <th class="admin-useractionbutton"></th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="board" items="${communityBoardList }"> <!--items needs to be replace...-->
              <tr>
                <td class="admin-boardseq">${board.boardSeq }</td>
                <td class="admin-boardid">${board.userId }</td>
                <td class="admin-title"><a href="#" class="oneononecounsel">${board.title }</a></td>
                <td class="admin-regdate"><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd KK:mm:ss"/></td>
                <td class="admin-useractionbutton"><button class="adminpagebuttonformanage" type="button" onclick="location.href='#'">삭제</button></td>
              </tr>
            </c:forEach>
          </tbody>            
        </table>
    </div>
  </form>
    <!--page navigation-->
    <div class="row mt-2">
      <div class="col-12" style="margin-top: 40px;">
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
              <li class="page-item"><a class="page-link" href="#">Previous</a></li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
        </nav>
      </div>
    </div>

    <%@ include file="layout/admin_footer.jsp" %>