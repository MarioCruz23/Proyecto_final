<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>      
        
        <script>
            $(document).ready(function(){
                listarNombre();

                $(document).ready(function(){
                listarAutor();

                $(document).ready(function(){
                listarEditoriales();

                $(document).ready(function(){
                listarCategoria();
                
                $("#btnListar").click(function(){                    
                    GuardarLibro();
                }) 
                
                function GuardarLibro(){
                    $.ajax({
                        url:"NewServlet",
                        dataType:"html",
                        data: $("#formLibro").serialize()+"&control=INSERT",
                        method: "POST",
                        success:function(respuestaDelServidor){
                            if (respuestaDelServidor=1){
                                 $("#msjExito").show();
                                $("#msjExito").hide(3000);
                                 document.getElementById("formLibro").reset();
                                 setInterval(function(){  window.location.replace("lista.jsp"); }, 4000);
                                
                            }else{
                                 $("#msjError").show();
                                $("#msjError").hide(3000);
                            }
                        }
                    })                    
                }                
                function listarNombre(){
                    $.ajax({
                         url:"NewServlet",
                         dataType:"html",
                         data:"control=LISTAR",
                         method: "POST",
                         success:function(respuesta){
                             $("#nombre").html(respuesta);
                         },
                         error:function(objAjax, estado, excepcion){
                             alert("Error al mostrar en registros");
                         }
                    })
                }
                function listarAutor(){
                    $.ajax({
                         url:"NewServlet",
                         dataType:"html",
                         data:"control=LISTAR",
                         method: "POST",
                         success:function(respuesta){
                             $("#autor").html(respuesta);
                         },
                         error:function(objAjax, estado, excepcion){
                             alert("Error al mostrar en registros");
                         }
                    })
                }
                function listarEditoriales(){
                    $.ajax({
                         url:"NewServlet",
                         dataType:"html",
                         data:"control=LISTAR",
                         method: "POST",
                         success:function(respuesta){
                             $("#editoriales").html(respuesta);
                         },
                         error:function(objAjax, estado, excepcion){
                             alert("Error al mostrar en registros");
                         }
                    })
                }
                function listarCategoria(){
                    $.ajax({
                         url:"NewServlet",
                         dataType:"html",
                         data:"control=LISTAR",
                         method: "POST",
                         success:function(respuesta){
                             $("#Categoria").html(respuesta);
                         },
                         error:function(objAjax, estado, excepcion){
                             alert("Error al mostrar en registros");
                         }
                    })
                }
            })
        </script>
    </head>
    <body>
        <div class="p-3 mb-2 bg-warning">
        <div class="container-md p-3 mb-2 bg-info" style="min-height: 900px;">       
            <center><h1 class="mt-5 mb-5"> Registro de libros </h1></center>
              <div class="alert alert-success" role="alert" style="display: none;" id="msjExito" >
                Tarjeta agregada exitosamente!
              </div>
            <div class="alert alert-danger" role="alert" style="display: none;" id="msjError">
               Error al ejecutar
              </div>
            <form action="NewServlet" method="POST" id="formLibro" >
                <div class="form-group">
                    <label class="text-light" for="formGroupExampleInput">Id libro</label>
                  <input type="text" class="form-control" id="libro"  name="id" placeholder="No. del libro" required>
                   <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01">Nombre</label>
                    </div>
                      <select class="custom-select" id="nombre" name="nombre" value="nombre">
                        <option> Selecione el nombre del libro </option>
                                        <option value="1"> Code Complete </option>
                                        <option value="2" > Coders at Work </option>
                                        <option value="3"> The Pragmatic Programmer </option>
                                        <option value="4"> Un paseo para recordar </option>
                                        <option value="5"> FISICA PARA LA CIENCIA Y LA TECNOLOGIA </option>
                    </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01"> Autor </label>
                    </div>
                      <select class="custom-select" id="autor" name="autor" value="autor">
                        <option> Selecione el autor que desea </option>
                                        <option value="1"> Steve McConnell </option>
                                        <option value="2" > Peter Seibel </option>
                                        <option value="3"> Roger S. Pressman </option>
                                        <option value="4"> PAUL A. TIPLER GENE MOSCA </option>
                                        <option value="5"> Nicholas Sparks </option>
                    </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01"> Editoriales <label>
                    </div>
                      <select class="custom-select" id="editoriales" name="editoriales" value="editoriales">
                        <option> Selecione el editorial </option>
                                        <option value="1"> Apress Media LLC </option>
                                        <option value="2" > Addison Wesley </option>
                                        <option value="3">  Editorial Reverte </option>
                                        <option value="4"> GCP </option>
                                        <option value="5"> Microsoft Press </option>
                      </select>
                  </div>
                  <div class="input-group mb-3 mt-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01"> Categoria </label>
                    </div>
                      <select class="custom-select" id="categoria" name="categoria" value="categoria">
                        <option> Selecione la categoria </option>
                                        <option value="1"> Programacion </option>
                                        <option value="2" > Romance </option>
                                        <option value="3">  Fisica </option>
                    </select>
                  </div>
                </div>
                <a href="lista.jsp" type="button" name="listar" value="listar" id="btnListar" class="btn btn-success"> 
                    <i class="fas fa-"></i>
                    Listar
                    </a>                 
                <a href="lista.jsp" type="button" value="Cancelar" id="btnCancelar" class="btn btn-danger"> 
                    Cancelar
                    </a>                 
             </form>           
        </div>
        </div>
        <footer style="background: background;">
            Footer
        </footer>
    </body>
    </body>
</html>
