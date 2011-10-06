<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<h3>Your Viadeo Profile</h3>

<p>Hello, <c:out value="${profile.firstName}"/>!</p>
<img src="<c:out value="${profile.largeImageUrl}"/>"/>
<dl>
	<dt>Viadeo ID:</dt>
	<dd><c:out value="${profile.id}"/></dd>
	<dt>Location:</dt>
	<dd><c:out value="${profile.location.city}"/></dd>
	<dt>URL:</dt>
	<dd><a href="<c:out value="${profile.profileUrl}"/>"><c:out value="${profile.profileUrl}"/></a></dd>
</dl>

<c:url value="/connect/viadeo" var="disconnectUrl"/>
<form id="disconnect" action="${disconnectUrl}" method="post">
	<button type="submit">Disconnect from Viadeo</button>	
	<input type="hidden" name="_method" value="delete" />
</form>

