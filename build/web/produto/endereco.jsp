<%-- 
    Document   : endereco
    Created on : Aug 21, 2018, 10:00:02 AM
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="/WebApplication1/javascript/jquery.min.js"></script>
        <script src="/WebApplication1/javascript/endereco.js"></script>
    </head>
    <body>
        <div class="form-group">
            <label for="cep">CEP</label>
            <input type="text" id="cep">
        </div>
        <div class="form-group">
            <label for="estado">Estado</label>
            <input type="text" id="estado">
        </div>
        <div class="form-group">
            <label for="cidade">Cidade</label>
            <input type="text" id="cidade">
        </div>
        <div class="form-group">
            <label for="bairro">Bairro</label>
            <input type="text" id="bairro">
        </div>
        <div class="form-group">
            <label for="logradouro">Logradouro</label>
            <input type="text" id="logradouro">
        </div>
        <div class="form-group">
            <label for="numero">Número</label>
            <input type="text" id="numero">
        </div>
        <a href="#" id="botao-cadastro">Cadastro</a>
    </body>
</html>
