<%-- 
    Document   : login
    Created on : 16 jun 2023, 18:23:52
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Phudu:wght@500&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Mukta&display=swap" rel="stylesheet">

        <link rel='stylesheet' type='text/css' media='screen' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

        <link rel="stylesheet" href="style.css">

        <link rel="icon" type="image/x-icon" href="./img/EspacioIMG.jpeg">
    </head>
    <body id="Blogin">
        <%--Login --%>
        <div class="container accede">

            <div>
                <div class="header">
                    <h3>Accede a la tienda</h3>
                    <hr>
                </div>

                <div class="body">
                    <c:if test="${not empty error}">
                        <div class="error">
                            ${error}
                        </div>
                    </c:if>
                    <c:if test="${not empty Correcto}">
                        <div class="Correcto">
                            ${Correcto}
                        </div>
                    </c:if>
                    
                  <form method="POST" action="ControladorLogin">
                      <div class="form-floating mb-3">
                          <input type="text" class="form-control" id="NombreU" name="NombreU" required>
                          <label for="NombreU">Nombre Usuario</label>
                      </div>
                      <div class="form-floating mb-3">
                          <input type="password" class="form-control" name="Contra" id="Contra" required>
                          <label for="Contra">Contraseña</label>
                      </div>

                      <button type="submit" name="Acceder" class="btn w-100 botonLogin">Iniciar sesión</button>
                  </form>
                </div>

                <div class="modal-footer">
                    <button class="tooltip-test" id="BotonRegistrate" data-bs-toggle="modal" data-bs-target="#RegistrarseModal" href="#">Registrate</button>
                </div>

            </div>
        </div>
        
        <%--registrate --%>
        
        <div class="modal fade" id="RegistrarseModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
            <div class="modal-dialog">

                <div class="modal-content">

                    <div class="modal-header">
                        <h3>Registrate</h3>
                    </div>

                    <div class="modal-body">
                        <form method="POST" action="RegistrarUsu">

                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="NombreUsuarioRegistra" name="NombreUsuarioRegistra" >   
                                <label for="NombreUsuarioRegistra" class="form-label">NombreUsuario</label>
                            </div>

                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="EmailRegistra" name="EmailRegistra">  
                                <label for="EmailRegistra" class="form-label">Email</label>
                            </div>

                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="DireccionUsuario" name="DireccionUsuario">  
                                <label for="DireccionUsuario" class="form-label">Dirección</label>
                            </div>

                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="ContraRegistra" name="ContraRegistra">
                                <label for="ContraRegistra" class="form-label">Contraseña</label>
                            </div>


                            <div class="d-grid gap-2">
                                <button type="submit" class="btn botonLogin" name="Registrate">Registrarse</button>
                            </div>
                    </form>
                    </div>

                </div>

            </div>
        </div>
        
    </body>
</html>
