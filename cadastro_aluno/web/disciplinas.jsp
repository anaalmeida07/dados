<%-- 
    Document   : disciplinas
    Created on : 15 de out. de 2023, 22:59:49
    Author     : crist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- any content can be specified here e.g.: --%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DISCIPLINAS</title>
</head>
<body>
    <h1>DISCIPLINAS ADS</h1>
    <table border="1">
        <tr>
            <th>RA</th>
            <th>NOME</th>
            <th>DISCIPLINAS</th>
        </tr>
        
        <%
            String cadastro_aluno = "aluno.json";
            
            // Lê o JSON a partir do arquivo
            JSONParser arq = new JSONParser();
            try {
                JSONArray disciplinas = (JSONArray) arq.parse(new FileReader(cadastro_aluno));

                for (Object disciplinaObj : disciplinas) {
                    JSONObject disciplina = (JSONObject) disciplinaObj;
        %>
        <tr>
            <td><%= disciplina.get("RA") %></td>
            <td><%= disciplina.get("NOME") %></td>
            <td><%= disciplina.get("DISCIPLINAS") %></td>
        </tr>
        <%
                }
            } catch (ParseException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>