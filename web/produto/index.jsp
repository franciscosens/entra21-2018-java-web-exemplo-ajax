<%-- 
    Document   : index
    Created on : Aug 21, 2018, 8:43:29 AM
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="/WebApplication1/bootstrap.css" >

    </head>
    <body>
        <div class="container-fluid">
            <h1>Hello World!</h1>
            <a href="#" id="atualizar">Atualizar</a>
            <a href="#" id="novo"  class="btn btn-primary" data-toggle="modal" data-target="#categoria-modal" >Cadastrar</a>
            <table class="table table-striped" id="tabela-categorias">
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <%@include file="modal.jsp" %>
    </body>
    <script src="/WebApplication1/javascript/jquery.min.js" type="text/javascript"></script>
    <script src="/WebApplication1/bootstrap.js" ></script>
    <script src="/WebApplication1/javascript/categoria/index.js" ></script>
</html>
