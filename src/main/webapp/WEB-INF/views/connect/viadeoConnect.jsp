<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<h3>Connect to Viadeo</h3>

<form action="<c:url value="/connect/viadeo" />" method="POST">
	<div class="formInfo">
		<p>
			You haven't created any connections with Viadeo yet. Click the button to connect Spring Social Showcase with your Viadeo account. 
			(You'll be redirected to Viadeo where you'll be asked to authorize the connection.)
		</p>
	</div>
	<p><button type="submit"><img src="<c:url value="/resources/social/viadeo/connect-with-viadeo.png" />"/></button></p>
</form>
