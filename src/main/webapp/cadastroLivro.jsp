<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String nomeLivro = request.getParameter("nomeLivro");
		String autorLivro = request.getParameter("autorLivro");
	
	%>
	
	<h1>Cadastro de Livro</h1>
	
	<p> O seguinto livro foi cadastrado:</p>
	
	<p>Nome do livro: <%=nomeLivro %></p>
	<p>Autor do livro: <%=autorLivro %></p>
	
</body>
</html>