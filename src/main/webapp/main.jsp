<html>
<head></head>
<body>
	<%	
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			for(Cookie cookie : cookies){
				System.out.println(cookie.getName());
				if(cookie.getName().equals("fav")){
					out.print(cookie.getValue());
					break;
				}
			}
		}
	%>
</body>
</html>