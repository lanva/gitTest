<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%--@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"--%>
<%--@ taglib uri="http://www.et-win.com/tags" prefix="et"--%>
<c:set var="cxtPath" value="${pageContext.request.contextPath}" />
<c:set var="publicPath" value="<%=com.sekorm.supply.common.Parameter.webPortUrl%>" />
<%
	response.setHeader("Cache-Control", "no-cache,no-strore");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);

%>