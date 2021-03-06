<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="asms" uri="/WEB-INF/tlds/asms.tld" %>
<%@ include file= '/WEB-INF/jsp/asms/common/orderByImage.jsp'%>
<script type="text/javascript">

//정렬
function jsHistoryListSort(orderColumnValue){
	
	var frm = $("form[name='historySendForm']");
	var orderColumn = frm.find("input[name='orderColumn']");
	var orderType = frm.find("input[name='orderType']");
	
	if(orderColumn.val() == orderColumnValue || orderColumn.val() == "") {
		if(orderType.val() == "DESC" || orderType.val() == "") {
			orderType.val("ASC");
	    }else{
	    	orderType.val("DESC");
	    } 
	}else{
		orderType.val("DESC");
	}
	orderColumn.val(orderColumnValue);
	jsHistoryListSearch(1);
}

</script>

<form id="historyListForm" name="historyListForm" method="post">
<input type="hidden" name="listCnt" value="${paginationInfo.totalRecordCount }">
<input type="hidden" name="orderColumn" value="<c:out value="${historyVO.orderColumn}"/>">
<input type="hidden" name="orderType" value="<c:out value="${historyVO.orderType}"/>">
<div class="row">
	 <div class="col-lg-12">
		<!-- 페이지 Start -->
		<div class="btn-group">
			<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="jsHistoryListSearch" />
			<form:hidden path="pageIndex" />
		</div>
		<!-- 페이지 End -->
	</div>
</div>
<div class="row">
	 <div class="col-lg-12">
	     <div class="ibox float-e-margins">
	         <div class="ibox-title">
	             <h5>감사이력 목록</h5>
	         </div>
	         <div class="ibox-content">
	             <div class="table-responsive">
		           <table class="table table-striped table-bordered table-hover" >
		            <thead>
			            <tr>
			                <th class="widthP5 textCenter"><input type="checkbox" class="parentCheckBox"></th>
			                <th class="widthP30 textCenter"><a href="javascript:jsHistoryListSort('History_CD');">감사이력코드</a>
			                ${historyVO.orderColumn eq "History_CD" ? historyVO.orderType eq "ASC" ? sAscSortImg : sDescSortImg : "" }
			                </th>
			                <th class="widthP35 textCenter"><a href="javascript:jsHistoryListSort('History_NM');">감사이력명</a>
			                ${historyVO.orderColumn eq "History_NM" ? historyVO.orderType eq "ASC" ? sAscSortImg : sDescSortImg : "" }
			                </th>
			                <th class="widthP30 textCenter"><a href="javascript:jsHistoryListSort('USE_FLAG');">사용여부</a>
			                ${historyVO.orderColumn eq "USE_FLAG" ? historyVO.orderType eq "ASC" ? sAscSortImg : sDescSortImg : "" }
			                </th>
			            </tr>
		            </thead>
		            <tbody>
		            	<c:choose>
		            		<c:when test="${empty SysHistoryList }">
						            <tr>
						            	<td colspan="4" class="text-center">조회된 목록이 없습니다.</td>
						            </tr>	            		
		            		</c:when>
		            		<c:otherwise>
		            			<c:forEach var="result" items="${SysHistoryList}" varStatus="status">
						            <tr>
						                <td class="textCenter"><input type="checkbox" class="childCheckBox" name="history_id" value="${result.history_id }"></td>
						                <td class="textCenter">${result.history_cd }</td>
						                <td class="textLeft blueText"><a href="javascript:;" onclick="jsHistoryViewForm('${result.history_id}')">${result.history_nm }</a></td>
						                <td class="textLeft">${result.use_flag_cm }</td>
						            </tr>
					            </c:forEach>
		            		</c:otherwise>
		            	</c:choose>
		            </tbody>
		           </table>
	             </div>
	         </div>
	     </div>
	 </div>
</div>
</form>