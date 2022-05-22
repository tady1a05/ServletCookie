<html>
<head></head>
<body>
	<form method="post" action="select.jsp">
		<select name="lang">
			<option value="java">Java</option>
			<option value="C++">C++</option>
			<option value="Python">Python</option>
			<option value="Javascript">Javascript</option>
		</select>
		<input type="submit" value="submit"/>
	</form>
	
	<%
		String lang = request.getParameter("lang");
		System.out.println(lang);

		if(lang!=null){
			System.out.println(lang);
			Cookie cookie = new Cookie("fav",lang);
			
			cookie.setMaxAge(60*60*24*365);
			
			response.addCookie(cookie);
		}
	%>
	
	<a href="main.jsp">Main</a>
</body>
</html>