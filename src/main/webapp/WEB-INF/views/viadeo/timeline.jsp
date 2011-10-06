<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>
      
<h3>Your Viadeo <c:out value="${timelineName}"/> Timeline</h3>

<div class="feed">
<ul class="imagedList">
<c:forEach items="${timeline}" var="news">
	<li class="imagedItem">
		<div class="image">
			<c:if test="${not empty news.from.smallImageUrl}"><img src="<c:out value="${news.from.smallImageUrl}"/>" align="left"/></c:if>
		</div>
		<div class="content">
		<strong><a href="${news.from.profileUrl}"><c:out value="${news.from.name}" /></a></strong><br/>
		<c:out value="${news.label} ${news.message}" /><br/>
		<span class="postTime"><c:out value="${news.createdTime}"/></span>
		</div>
	</li>
</c:forEach>
</ul>
</div>