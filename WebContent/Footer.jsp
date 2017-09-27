
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:if test="${sessionScope.usertype eq 'Admin'}">
	<jsp:include page="admin_footer.jsp"></jsp:include>
	
</c:if>

<c:if test="${sessionScope.usertype eq 'User'}">
	<jsp:include page="User/user_footer.jsp"></jsp:include>
</c:if>

<c:if test="${sessionScope.usertype eq 'Company'}">
	<jsp:include page="company_footer.jsp"></jsp:include>
</c:if>

 <c:if test="${sessionScope.usertype eq 'Government'}">
	<jsp:include page="Government_Footer.jsp"></jsp:include>
</c:if>