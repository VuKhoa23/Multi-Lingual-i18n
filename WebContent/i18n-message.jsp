<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



  <c:set var="locale" value="${not empty param.locale ? param.locale : pageContext.request.locale}" scope="session"/>
  
  <fmt:setLocale value="${locale}"/>
  <fmt:setBundle basename="com.vukhoa23.i18n.resources.mylabels"/>
  
<html>


<body>


  <a href="i18n-message.jsp?locale=en_US">English (US)</a>
  <a href="i18n-message.jsp?locale=es_ES">Spanish (ES)</a>
  <a href="i18n-message.jsp?locale=vi_VI">Vietnamese (VI)</a>
  
  <br/><br/>
  <fmt:message key="label.greeting" /> <br/><br/>
  
  <fmt:message key="label.firstName" /> <i>Vu</i> <br/>
  <fmt:message key="label.lastName" /> <i>Khoa</i> <br/><br/>
  
  <fmt:message key="label.welcome" /> <br/>
  
  <% 
  String theLocale = request.getParameter("locale");
  out.println("Selected locale " + theLocale);
  %>
</body>
</html>