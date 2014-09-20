
<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>MENU VENTAS </title>
  <link href="../ASSETS/css/bootstrap.css" rel="stylesheet">
  <script src="../ASSETS/jquery/jquery-git2.js"></script>
  <script src="../ASSETS/js/bootstrap.min.js"></script>
  <link  href="../ASSETS/DataTables-1.10.0/media/css/jquery.dataTables.css" rel="stylesheet">
<script src="../ASSETS/DataTables-1.10.0/media/js/jquery.dataTables.min.js"></script>
<script src="../ASSETS/DataTables-1.10.0/media/js/jquery.dataTables.editable.js"></script>
<script src="../ASSETS/DataTables-1.10.0/media/js/jquery.jeditable.js"></script>
  <link href="../ASSETS/css/simple-sidebar.css" rel="stylesheet">
  <link href="../ASSETS/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!---invocar librerias de pnotify-->
<link href="../ASSETS/css/pnotify.custom.min.css" rel="stylesheet">
<script src="../ASSETS/js/pnotify.custom.min.js"></script>
  <!---fin librerias de pnotify-->
   

   <style type="text/css">
    .deslis{
      margin-top:15px;
    }
  </style>

  <style type="text/css">
    .btnPer{
      margin-top:23px;
    }
  </style>

  <style type="text/css">
    .contai{
      margin-top:49px;
    }
  </style>

</head>

<body>

  <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        </button>      
        <div class="navbar-header">
          <a class="navbar-brand fa fa-bars fa-2x" id="menu-toggle" ></i></a>

          <a class="navbar-brand fa fa-home fa-2x" href="Menu principal venta.php"></i>  INICIO</a>
        </div>
      </div>


      <div class="collapse navbar-collapse navbar-ex1-collapse">

        <ul class="nav navbar-nav navbar-right navbar-user">
       
          <li class="dropdown messages-dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Mensajes<span class="badge">7</span> <b class="caret"></b></a>
          
          </li>
          
           
          <li class="dropdown user-dropdown">          
            <a href="#" class="dropdown-toggle"  data-toggle="dropdown"><i class="fa fa-user"></i>   <?php echo $_SESSION['usuario'] ?><b class="caret"></b></a>
          </li>
        
        </ul>
        </div>
      </nav>




      <!-- Sidebar -->
        <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
          <div class="container deslis">
            <li><a href="Menu principal venta.php"><i class="fa fa-shopping-cart"></i> Ventas</a></li>
            <li><a href="../VISTAS/compras.html"><i class="fa fa-cc-visa"></i> Compras</a></li>
            <li><a href="../VISTAS/proveedor (santiago).html"><i class="fa fa-font"></i> Proveedores</a></li>
            <li><a href="../VISTAS/bootstrap-elements.html"><i class="fa fa-desktop"></i> Facturas</a></li>
            <li><a href="../VISTAS/cliente (santiago).html"><i class="fa fa-wrench"></i> Clientes</a></li>
            <li class="active"><a href="../VISTAS/blank-page.html"><i class="fa fa-file"></i> devoluciones </a></li>
           
              <li><a href="../VISTAS/inicio.html"><i class="fa fa-dashboard"></i> control </a></li>
              <li><a href="../VISTAS/charts.html"><i class="fa fa-bar-chart-o"></i> Informes</a></li>
              <li><a href="../VISTAS/Productos.html"><i class="fa fa-table"></i> Productos</a></li>     
            </ul>
          </div>




</div>







<div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="panel panel-default">
          <div class="panel-heading">Formulario</div>
          <div class="panel-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="exampleInputEmail1">Producto</label>
                  <select id="e2" class=" populate placeholder select2-offscreen form-control" tabindex="-1" title="">
                    <option></option>
                    <optgroup label="Granos">
                      <option >arroz diana 321</option>
                      <option value="HI">arroz roa 322</option>
                    </optgroup>
                    <optgroup label="Pacific Time Zone">
                      <option value="CA">California</option>
                      <option value="NV">Nevada</option>
                      <option value="OR">Oregon</option>
                      <option value="WA">Washington</option>
                    </optgroup>
                    <optgroup label="salsa">
                      <option value="AZ"> Salsa tomate x500g 123</option>
                      <option value="CO">Colorado</option>
                      <option value="ID">Idaho</option>
                      <option value="MT">Montana</option>
                      <option value="NE">Nebraska</option>
                      <option value="NM">New Mexico</option>
                      <option value="ND">North Dakota</option>
                      <option value="UT">Utah</option>
                      <option value="WY">Wyoming</option>
                    </optgroup>
                    <optgroup label="Central Time Zone">
                      <optgroup label="Eastern Time Zone">
                      </select>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Cantidad</label>
                      <input type="number" class="form-control" id="exampleInputEmail2" placeholder="Cantidad">
                    </div>
                  </div>
                  <div class="col-md-2 btnPer">
                    <input type="button" class="btn btn-danger btn-block" value="Limpiar" style="background-color: #CBCBCB; border-color:#CBCBCB;">
                  </div>
                  <div class="col-md-2 btnPer">
                    <input type="button" class="btn btn-success btn-block" value="Agregar" onclick="notificacion()">
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-12">
                    <div class="panel panel-success">
                      <div class="panel-heading">Listado</div>
                      <div class="panel-body">
                        <table class="table table-hover table-bordered">
                         <thead>
                          <tr>
                            <th> Producto </th>
                            <th> Iva </th>
                            <th> Cantidad </th>
                            <th> precio unit </th>
                            <th> Precio total </th>
                            <th><span class="glyphicon glyphicon-trash"></span></th>
                          </tr>
                        </Thead>
                        <tbody>
                          <tr>
                            <td> arroz diana </td>
                            <td>  8%</td>
                            <td> 2 </td>
                            <td> 1700 </td>
                            <td> 3400 </td>
                            <td> <a href=""><span class="glyphicon glyphicon-remove"></span></a></td>

                          </tr>

                          <tr>
                            <td> Pan bimbo </td>
                            <td>  8%</td>
                            <td> 2 </td>
                            <td> 2000 </td>
                            <td> 4000 </td>
                            <td> <a href=""><span class="glyphicon glyphicon-remove"></span></a></td>

                          </Tr>

                          <tr>
                           <td> Jamon Cerrano </td>
                           <td>  7%</td>
                           <td> 1 </td>
                           <td> 8500</td>
                           <td> 8500 </td>
                           <td> <a href=""><span class="glyphicon glyphicon-remove"></span></a></td>

                         </tr>

                         <tr>
                          <td> Pastas Doria</td>
                          <td>  4%</td>
                          <td> 1 </td>
                          <td> 1700</td>
                          <td> 1700 </td>
                          <td>   <a href=""><span class="glyphicon glyphicon-remove"></span></a></td>

                        </tr>
                      </tbody>

                    </table>


                    <div class="row">
                      <div class="col-md-6">

                       <div class="col-md-4 btnPer1 ">
                        <input type="button" class="btn btn-warning btn-block" value="Limpiar">
                      </div>
                      <div class="col-md-4  btnPer1">
                        <input type="button" class="btn btn-info btn-block" value="Guardar Borrador">
                      </div>
                      <div class="col-md-4  btnPer1">
                        <input type="button" class="btn btn-success btn-block"  data-toggle="modal" data-target="#myModal" value="Realizar Venta" >

                      </div>
                    </div>

                    <div class=" col-md-offset-3 col-md-3">
                      <div class="panel panel-success">
                        <div class="panel-heading">Precio Parcial</div>
                        <div class="panel-body">
                         <table class="table table-hover table-bordered">
                          <thead>
                            <tr>
                              <th> Precio total </th>
                            </tr>
                          </Thead>
                          <tbody>
                            <tr>
                              <td>16200 </td>                                                      
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>







<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h1 class="modal-title" id="myModalLabel">Recuperar </h1>
      </div>
      
       



       <div class="modal-body">
      
<form role="form">

<!-- campos de recuperacion contraseña -->
  <div class="form-group">
    <label for="exampleInputEmail1">ingrese su email</label>

    <input  type="username"  class="form-control " id="exampleInputEmail1" placeholder="Email"  >

  </div>




</div>


      
      <div class="modal-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal"><span class="glyphicon glyphicon-off"></span> Cerrar</button>
        <button type="button" class="btn btn-warning"> <span class="glyphicon glyphicon-send"></span> Enviar</button>
      </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>




          

<script type="text/javascript">
function notificacion(){
	new PNotify({
	    title: 'Productos agregados',
    text: 'sus Productos se han ingresado correctamente',
    icon: 'fa fa-envelope-o',
    type: 'info'
	    });
}
</script>

<!-- JavaScript -->
<script src="js/bootstrap.js"></script>

<!-- Custom JavaScript for the Menu Toggle -->
<script>
  $("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("active");
  });
</script>


</body>

</html>
