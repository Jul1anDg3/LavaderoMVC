

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">      
        <title>Crear un servicio</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="form-inline card-header bg-info">
                    <!-- Boton para regresar -->
                     <div class="col-sm-4">
                         <a class=" col-sm-8 btn btn-light" href="index.htm"> inicio </a> 
                     </div>
                     <div class="col-sm-8 text-center">
                         <h4> Nuevo Servicio </h4> 
                     </div>            
                </div>
                
                <div class="card-body">
                    <form method="POST">
                        <label class="font-weight-bold" >Nombre del usuario</label>
                            <input type="text" name="cliente" class="form-control">
                            
                        <label class="font-weight-bold" >Fecha del servicio</label>
                            <input type="date" name="fecha" class="form-control">
                        
                        <label class="font-weight-bold" >Tipo de vehiculo</label>   
                        <div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="TipoVehiculo1" name="tipoAutoId" value="1" class="custom-control-input" >
                                <label class="custom-control-label" for="TipoVehiculo1">Automovil</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="TipoVehiculo2" name="tipoAutoId" value="2" class="custom-control-input">
                                <label class="custom-control-label" for="TipoVehiculo2">Camioneta</label>
                            </div>
                        </div>                      
                        <label class="font-weight-bold" >Tipo de lavado</label>
                            <select name="lavadoId" class="custom-select">
                                <option value="1" selected>lavado Basico</option>
                                <option value="2">Lavado Especial</option>
                                <option value="3">Combo1</option>
                                <option value="4">Combo2</option>
                                <option value="5">Combo3</option>
                            </select>
                        <label class="font-weight-bold" >Tipo de desinfección</label>
                            <select name="desinfeccionId" class="custom-select">
                                <option value="1" selected>Desinfección Básica</option>
                                <option value="2">Desinfección Avanzada</option>
                            </select>
                        <div class="d-flex justify-content-center d-flex align-items-center mt-4">
                            <input type="submit" value="Agregar" class="btn btn-success">                                                
                        </div>
                        
                    </form>
                    
                </div>
                
            </div>
            
        </div>
    </body>
</html>
