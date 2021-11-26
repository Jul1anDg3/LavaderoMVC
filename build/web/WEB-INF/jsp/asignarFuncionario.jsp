
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">      
        <title>Asignar funcionario</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="form-inline card-header bg-info">
                    <!-- Boton para regresar -->
                     <div class=" col-sm-4">
                         <a class=" col-sm-8 btn btn-light" href="funcionarios.htm"> Regresar </a> 
                     </div>
                     <div class="col-sm-6 text-center">
                         <h4> Asignar funcionario </h4>
                     </div>                               
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label class="font-weight-bold" >Tipo de servicio</label>
                            <input type="text" name="Tipo" class="form-control" value="${lista[0].LAVADO_NOMBRE}" readonly>
                            
                        <label class="font-weight-bold" >Descripción</label>
                        
                        <textarea class="form-control"  name="Descripcion" rows="3" value="" readonly>${lista[0].LAVADO_DESCRIPCION}</textarea>
                        
                        <label class="font-weight-bold" >Nombre del funcionario</label>
                            <input type="text" name="funcionario" class="form-control" value="${lista[0].LAVADO_FUNCIONARIO}">
                            
                        <label class="font-weight-bold" >Precio del servicio</label>   
                            <input type="text" name="precio" class="form-control" value="${lista[0].LAVADO_PRECIO}" readonly>

                        <div class="d-flex justify-content-center d-flex align-items-center mt-4">
                            <input type="submit" value="Asignar Funcionario" class="btn btn-success">                                                    
                        </div>                      
                    </form>                    
                </div>                
            </div>            
        </div>
    </body>
</html>
