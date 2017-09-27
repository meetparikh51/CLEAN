
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:if test="${sessionScope.usertype eq 'Admin'}">
	<jsp:include page="admin_menu.jsp"></jsp:include>
	
</c:if>

<%-- <c:if test="${sessionScope.usertype eq 'User'}"> 
	<jsp:include page="user_menu.jsp"></jsp:include>
</c:if> --%>

<c:if test="${sessionScope.usertype eq 'Company'}"> 
	<%System.out.println("company header"); %>
	<jsp:include page="company_menu.jsp"></jsp:include>
</c:if>

 <c:if test="${sessionScope.usertype eq 'Government'}"> 
	<jsp:include page="Government_menu.jsp"></jsp:include>
</c:if>