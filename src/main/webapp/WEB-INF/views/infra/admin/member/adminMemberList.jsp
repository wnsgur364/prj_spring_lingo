<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>테이블</title>
</head>
<body class="bg-theme bg-theme9">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
  <%@ include file="../include/header.jsp" %>
  
   <jsp:useBean id="CodeServiceImpl" class="com.lingo.app.code.CodeServiceImpl"/>
   
  <div class="clearfix"></div>
  <div class="content-wrapper">
    <div class="container-fluid">
      <div class="row mt-3">
        <form name=formList>
          <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
          <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
          <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
            <div class="row" style="align-items: center;">
              <div class="col-sm-6">
                <div class="dataTables_length" id="datatable_length">
                  <label
                  >Show
                    <select name="datatable_length" aria-controls="datatable" class=" input-sm" style="background-color: #485563; border: 1px solid rgba(255, 255, 255, 0.15)" >
                      <option value="10">10</option>
                      <option value="25">25</option>
                      <option value="50">50</option>
                      <option value="100">100</option>
                    </select>
                    entries</label>
                </div>
              </div>
              <div class="col-sm-6">
                <div id="datatable_filter" class="dataTables_filter">
                  <label>Search:<select name="shOption" class="undefined" style="background-color: #485563; border: 1px solid rgba(255, 255, 255, 0.15)"  >
                    <option value="">seq</option>
                    <option value="">id</option>
                    <option value="" selected>name</option>
                    <option value="">delNy</option>
                  </select>
                    <input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>" class="input-sm" placeholder="" aria-controls="datatable"  style="background-color: #485563; border: 1px solid rgba(255, 255, 255, 0.15)"  />
                    <button id="btnSearch" class="undefined input-sm" style="background-color: #485563; border: 1px solid rgba(255, 255, 255, 0.15)"  >Go</button>
                  </label>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <table id="" class="table table-striped table-bordered">
                  <thead>
                  <tr>
                    <th>seq</th>
                    <th>delNy</th>
                    <th>id</th>
                    <th>name</th>
                    <th>email</th>
                    <th>password</th>
                    <th>signupDate</th>
                    <th>lastLoginDate</th>
                    <th>address</th>
                    <th>addressDetail</th>
                    <th>badge</th>
                    <th>gender</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('1')}"/>
                  
                  <c:choose>
                    <c:when test="${fn:length(list) eq 0}">
                    </c:when>
                    <c:otherwise>
                      <c:forEach items="${list}" var="list" varStatus="status">
                        <tr>
                          <td><c:out value="${list.seq}"/></td>
                          <td><c:out value="${list.delNy}"/></td>
                          <td><a href="adminMemberForm?seq=<c:out value="${list.seq}"/>">
                            <c:out value="${list.id}"></c:out> </a>
                          </td>
                          <td><c:out value="${list.name}"/></td>
                          <td><c:out value="${list.email}"/></td>
                          <td><c:out value="${list.password}"/></td>
                          <td><c:out value="${list.signupDate}"/></td>
                          <td><c:out value="${list.lastLoginDate}"/></td>
                          <td><c:out value="${list.address}"/></td>
                          <td><c:out value="${list.addressDetail}"/></td>
                          <td><c:out value="${list.badge}"/></td>
                          <td>
                          <c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
							<c:if test="${list.gender eq listGender.seq}">
								<c:out value="${listGender.name }"/>
							</c:if> 
						  </c:forEach>
							</td>
                        </tr>
                      </c:forEach>
                    </c:otherwise>
                  </c:choose>
                  </tbody>
                </table>

              </div>
            </div>


          </div>

          <!-- pagination s -->
          <%@include file="../include/pagination.jsp"%>
          <!-- pagination e -->
<%--                            <div class="row">--%>
<%--                              <div class="col-sm-5">--%>
<%--                                <div--%>
<%--                                        class="dataTables_info"--%>
<%--                                        id="datatable_info"--%>
<%--                                        role="status"--%>
<%--                                        aria-live="polite">Showing 1 to 6 of 6 entries</div>--%>
<%--                              </div>--%>
<%--                              <div class="col-sm-7">--%>
<%--                                <div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate">--%>
<%--                                  <ul class="pagination">--%>
<%--                                    <li class="paginate_button previous disabled" id="datatable_previous">--%>
<%--                                      <a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0">Previous</a>--%>
<%--                                    </li>--%>
<%--                                    <li class="paginate_button active">--%>
<%--                                      <a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0">1</a>--%>
<%--                                    </li>--%>
<%--                                    <li class="paginate_button next disabled" id="datatable_next">--%>
<%--                                      <a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0">Next</a>--%>
<%--                                    </li>--%>
<%--                                  </ul>--%>
<%--                                </div>--%>
<%--                              </div>--%>
<%--                            </div>--%>
        </form>


<!--End Row-->

      <!--start overlay-->
      <div class="overlay toggle-menu"></div>
      <!--end overlay-->

    </div>
    <!-- End container-fluid-->

  </div><!--End content-wrapper-->
  <%@ include file="../include/footer.jsp" %>
</div><!--End wrapper-->

</body>
</html>