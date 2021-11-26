<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <title>Bienvenido al  Lavadero la Estrella</title>
    </head>

    <body>
        <div class="container mt-4">
            <!-- titulo de la tarjeta -->
            <div class="card border-info">
                <div class="card-header bg-info text-white ">
                    <div class="row justify-content-md-center text-center">
                            <h4> MVC Lavadero la Estrella</h4>                         
                    </div>
                     <div class="row justify-content-md-center">
                        <div class="col-3 mt-2  justify-content-md-center">
                            <!-- Boton para insertar -->
                            <a class="btn btn-light btn-lg" href="agregarServicio.htm"> Nuevo servicio </a>
                        </div>
                        <div class="col-3 mt-2  justify-content-md-center">
                            <!-- Esto es un comentario -->
                            <a class="btn btn-light btn-lg" href="funcionarios.htm"> Editar Funcionarios </a>
                        </div>
                    </div>
                </div>
                                <!-- Cuerpo de la tarjeta -->
                <div class="card-body">
                
                <!-- formulario de busqueda -->
                <div class="container mt-4 col-lg-12 ">                             
                            <form class="form-inline" method="GET">
                                <div class="row align-items-start">
                                    <div class="col-sm-3 font-weight-bold text-left">
                                        Fecha del servicio
                                    </div>
                                    <div class="col-sm-2 font-weight-bold text-left">
                                        T. lavado
                                    </div>
                                    <div class="col-sm-3 font-weight-bold text-left">  
                                        T. desinfección
                                    </div>
                                    <div class="col font-weight-bold text-left">  
                                        Funcionario
                                    </div>
                                    <div class="w-100"></div>
                                    <div class="col-sm-3">
                                        <input type="date" name="fecha" class="form-control">
                                    </div>
                                    <div class="col-sm-2">
                                        <select name="lavadoId" class="custom-select">
                                          <option value="0" selected>Sin Lavado</option>
                                          <option value="1">lavado Basico</option>
                                          <option value="2">Lavado Especial</option>
                                          <option value="3">Combo1</option>
                                          <option value="4">Combo2</option>
                                          <option value="5">Combo3</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-3">
                                        <select name="desinfeccionId" class="custom-select">
                                            <option value="0" selected>Sin Desinfección</option>
                                          <option value="1">Desinfección Básica</option>
                                          <option value="2">Desinfección Avanzada</option>
                                        </select>
                                    </div>
                                    <div class="col">
                                        <input type="text" name="funcionario" class="form-control">
                                    </div>
                                    <div class="d-flex col ">
                                        <input type="submit" value="Buscar" class="btn btn-success">     
                                    </div>                                                                    
                                </div>
                            </form>  
                </div>
                    <!-- tabla presentacion de los servicios existentes -->
                    <table class="table table-hover mt-5">
                        <thead class="thead-light">
                            <tr>
                                <th>ID</th>
                                <th>FECHA</th>
                                <th>CLIENTE</th>
                                <th>VEHICULO</th>
                                <th>T. LAVADO</th>
                                <th>F. LAVADO</th>
                                <th>$. LAVADO</th>
                                <th>T. DESINFECCION</th>
                                <th>F. DESINFECCION</th>
                                <th>$. DESINFECCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.SERVICIO_ID}</td>
                                    <td>${dato.SERVICIO_FECHA}</td>
                                    <td>${dato.SERVICIO_CLIENTE}</td>
                                    <td>${dato.TIPO_AUTO_TIPO}</td>
                                    <td>${dato.LAVADO_NOMBRE}</td>
                                    <td>${dato.LAVADO_FUNCIONARIO}</td>
                                    <td>${dato.LAVADO_PRECIO}</td>
                                    <td>${dato.DESINFECCION_NOMBRE}</td>
                                    <td>${dato.DESINFECCION_FUNCIONARIO}</td>
                                    <td>${dato.DESINFECCION_PRECIO}</td>
                                </tr>
                            </c:forEach>                            
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
