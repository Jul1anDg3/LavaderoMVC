<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
                
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class=" form-inline card-header bg-info text-white">
                <!-- Boton para insertar -->
                 <div class="col-sm-2">
                     <a class=" col-sm-8 btn btn-light" href="index.htm"> inicio </a> 
                 </div>
                 <div class="col-sm-10 text-center">
                     <h4> Asignar funcionario </h4> 
                 </div>                          
                             
               <!-- Esto es un comentario -->
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>TIPO</th>
                                <th>DESCRIPCION</th>
                                <th>FUNCIONARIO</th>
                                <th>PRECIO</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.LAVADO_ID}</td>
                                    <td>${dato.LAVADO_NOMBRE}</td>
                                    <td>${dato.LAVADO_DESCRIPCION}</td>
                                    <td>${dato.LAVADO_FUNCIONARIO}</td>
                                    <td>${dato.LAVADO_PRECIO}</td>
                                    <td>
                                        <a href="asignarFuncionario.htm?id=${dato.LAVADO_ID}" class="btn btn-warning">Editar</a>
                                    </td>
                                </tr>
                            </c:forEach>                            
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
