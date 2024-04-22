<%-- 
    Document   : articulos
    Created on : 22 abr 2024, 21:30:38
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articulos</title>
    </head>
    <body>
        <c:forEach var="articulo" items="${lista}">
            
            <div class="articulo">
                <h2>${articulo.getTitulo()}</h2>
                <h4>${articulo.getDescripcion()}</h4>
            </div>
            
        </c:forEach>
    </body>
</html>
