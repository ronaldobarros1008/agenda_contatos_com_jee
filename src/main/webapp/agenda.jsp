<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> listajsp = (ArrayList<JavaBeans>) request.getAttribute("contatos");
/*
//teste para verificar o retorno dos dados
for(int i = 0; i < lista.size(); i++){
	out.println(lista.get(i).getIdcon());
	out.println(lista.get(i).getNome());
	out.println(lista.get(i).getFone());
	out.println(lista.get(i).getEmail());
}
*/
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de Contatos</h1>
	<a href="novo.html" class="Botao1">Novo contato</a>
	<a href="report" class="Botao2">Relatório</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Telefoone</th>
				<th>E-mail</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < listajsp.size(); i++) {
			%>
			<tr>
				<td><%=listajsp.get(i).getIdcon()%></td>
				<td><%=listajsp.get(i).getNome()%></td>
				<td><%=listajsp.get(i).getFone()%></td>
				<td><%=listajsp.get(i).getEmail()%></td>
				<td>
					<a href="select?idcon=<%=listajsp.get(i).getIdcon()%>" class="Botao1">Editar</a> 
					<a href="javascript: confirmar(<%=listajsp.get(i).getIdcon()%>)" class="Botao2">Excluir</a>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>