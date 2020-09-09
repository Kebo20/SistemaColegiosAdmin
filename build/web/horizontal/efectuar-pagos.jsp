<%@page import="Entidades.Alumno"%>
<%@page import="Controladores.AlumnoJpaController"%>
<%@page import="Entidades.Tipopago"%>
<%@page import="Controladores.TipopagoJpaController"%>
<%@page import="Entidades.Matricula"%>
<%@page import="Controladores.MatriculaJpaController"%>
<%@page import="Entidades.Ano"%>
<%@page import="Controladores.AnoJpaController"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
        <title>Sistema Web Académico</title>
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!--This page css - Morris CSS -->
        <link href="../assets/plugins/c3-master/c3.min.css" rel="stylesheet">
        <!--  select2 CSS -->
        <link href="../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/plugins/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/plugins/switchery/dist/switchery.min.css" rel="stylesheet" />
        <link href="../assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" />
        <link href="../assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="../assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />
        <link href="../assets/plugins/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- You can change the theme colors from here -->
        <link href="css/colors/blue.css" id="theme" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

        

    </head>

    <body class="fix-header fix-sidebar card-no-border logo-center">
         <%
            if (session.getAttribute("usuario") != null && session.getAttribute("rol") == "admin") {

            } else {
                response.sendRedirect("login.jsp");
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

        %>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
        </div>
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->
            <header class="topbar">
                <nav class="navbar top-navbar navbar-expand-md navbar-light">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="inicio.jsp">
                            <!-- Logo icon -->
                            <b>
                                <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                                <!-- Dark Logo icon -->
                                <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="../assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span>
                                <!-- dark Logo text -->
                                <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->    
                                <img src="../assets/images/logo-light-text.png." class="light-logo" alt="C.P. Manuel Antonio Rivas" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse">
                        <!-- ============================================================== -->
                        <!-- toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav mr-auto mt-md-0">
                            <!-- This is  -->
                            <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                            <!-- ============================================================== -->

                        </ul>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav my-lg-0">

                            <!-- Profile -->
                            <!-- ============================================================== -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../assets/images/users/1.jpg" alt="user" class="profile-pic" /></a>
                                <div class="dropdown-menu dropdown-menu-right scale-up">
                                    <ul class="dropdown-user">
                                        <li>
                                            <div class="dw-user-box">
                                                <div class="u-img"><img src="../assets/images/users/1.jpg" alt="user"></div>
                                                <div class="u-text">
                                                    <h4><%=session.getAttribute("usuario")%></h4>
                                                </div>
                                        </li>
                                        <li role="separator" class="divider"></li>

                                        <li><a href="../logout"><i class="fa fa-power-off"></i>Salir</a></li>
                                    </ul>
                                </div>
                            </li>
                            <!-- ============================================================== -->

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- ============================================================== -->
            <!-- End Topbar header -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <aside class="left-sidebar">
                <!-- Sidebar scroll-->
                <div class="scroll-sidebar">
                    <!-- Sidebar navigation-->
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav">
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-arrange-send-backward"></i><span class="hide-menu">Académico</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="gestionar-año.jsp">Gestionar Año Escolar </a></li>
                                    <li><a href="gestionar-grado.jsp">Gestionar Grado </a></li>
                                    <li><a href="gestionar-seccion.jsp">Gestionar Sección</a></li>
                                    <li><a href="gestionar-periodo.jsp">Gestionar Periodo Académico</a></li>
                                    <li><a href="gestionar-publicacion.jsp">Gestionar Publicación</a></li>



                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-widgets"></i><span class="hide-menu">Cursos</span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="gestionar-area.jsp">Gestionar Área</a></li>
                                    <li><a href="gestionar-curso.jsp">Gestionar Cursos</a></li>
                                    <li><a href="gestionar-clase.jsp">Gestionar Clases</a></li>
                                    <li><a href="gestionar-horario.jsp">Gestionar Horario</a></li>

                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="fa fa-graduation-cap"></i><span class="hide-menu">Alumnos</span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="gestionar-alumno.jsp">Gestionar Alumno</a></li>
                                    <li><a href="gestionar-matricula.jsp">Gestionar Matrícula</a></li>

                                </ul>

                            </li>
                            <li>
                                <a class="has-arrow " href="gestionar-apoderado.jsp" aria-expanded="false"><i class="fa fa-users"></i><span class="hide-menu">Apoderados</span></a>


                            </li>
                            <li>
                                <a class="has-arrow " href="gestionar-profesor.jsp" aria-expanded="false"><i class="fa fa-user"></i><span class="hide-menu">Profesores</span></a>


                            </li>
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="fa fa-money"></i><span class="hide-menu">Pagos</span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="efectuar-pagos.jsp">Realizar Pago</a></li>
                                    <li><a href="gestionar-pagos.jsp">Gestionar Pagos</a></li>
                                    <li><a href="gestionar-tipopago.jsp">Gestionar Tipo de Pago</a></li>

                                </ul>
                            </li>

                        </ul>
                    </nav>
                    <!-- End Sidebar navigation -->
                </div>
                <!-- End Sidebar scroll-->
            </aside>
            <!-- ============================================================== -->
            <!-- End Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->
                <div class="container-fluid">
                    <!-- ============================================================== -->
                    <!-- Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <div class="row page-titles">
                        <div class="col-md-5 col-8 align-self-center">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio </a></li>
                                <li class="breadcrumb-item active">Gestionar Tipos de Pago</li>
                            </ol>
                        </div>

                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->


                    <!-- ============================================================== -->

                    <!-- ============================================================== -->    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card card-outline-info">

                                <div class="card-body">
                                    <button  data-toggle="modal" data-target="#Modal" class="btn btn-dropbox" >Añadir <icon class="fa fa-plus-circle"></icon></button>
                                    <form if="form">
                                        <div class="row p-t-20">
                                            <div class="col-md-4">
                                                <div class="form-group has-success">
                                                    <label class="control-label">N° Comprobante:</label>
                                                    <input type="text" id="norden" class="form-control" required autofocus>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group has-success">.
                                                    <label class="control-label">Fecha</label>
                                                    <input type="date" id="fecha" required=""  class="form-control" >
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="form-group ">
                                                    <label class="control-label">Alumno:</label>
                                                    <%AlumnoJpaController mc = new AlumnoJpaController(); %>
                                                    <select class="select2" id="alumno" style="width: 100%; "required >
                                                        <option value="">Selecciona un alumno</option>
                                                        <%for (Alumno m : mc.findAlumnoEntities()) {%>
                                                        <option value="<%=m.getId()%>" ><%=m.getNombre() + " " + m.getApPaterno() + " " + m.getApMaterno()%></option>

                                                        <% }%>

                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                    </form>
                                    <div class="table-responsive m-t-40">
                                        <table id="tableDetallepago" class=" tablesaw table-bordered table-hover table tablesaw-swipe display nowrap   table-striped  text-right text-dark" style="width: 100%; " cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th style="width:10%"></th>
                                                    <th style="width:30%">Descripción</th>
                                                    <th style="width:30%">Tipo</th>
                                                    <th style="width:30%">Monto</th>


                                                </tr>
                                            </thead>

                                            <tbody id="body">


                                            </tbody>
                                        </table>
                                    </div>

                                    <div class="modal-footer" >
                                        <div class="form-group ">
                                            <label class="control-label text-dark " >Total: </label>
                                            <input type="text" id="total" class="form-control text-dark text-right" readonly>
                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div  class="modal-footer">
                                <button style="position:absolute;left:50%" class="btn btn-dropbox waves-effect waves-light" onclick="guardar()">Guardar</button>
                                <button style="position:absolute;left:42%" class="btn btn-dark waves-effect waves-light" onclick="cancelar()">Cancelar</button>
                            </div>
                            <br>

                        </div>
                    </div>


                    <!-- ============================================================== -->
                    <!-- End PAge Content -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Right sidebar -->
                    <!-- ============================================================== -->
                    <!-- .right-sidebar -->
                    <div class="right-sidebar">
                        <div class="slimscrollright">
                            <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                            <div class="r-panel-body">
                                <ul id="themecolors" class="m-t-20">
                                    <li><b>With Light sidebar</b></li>
                                    <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                    <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                                    <li><a href="javascript:void(0)" data-theme="red" class="red-theme">3</a></li>
                                    <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme working">4</a></li>
                                    <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                    <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                                    <li class="d-block m-t-30"><b>With Dark sidebar</b></li>
                                    <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                                    <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                    <li><a href="javascript:void(0)" data-theme="red-dark" class="red-dark-theme">9</a></li>
                                    <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                                    <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                    <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme ">12</a></li>
                                </ul>
                                <ul class="m-t-20 chatonline">
                                    <li><b>Chat option</b></li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/1.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/2.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/3.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/4.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/5.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/6.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/7.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../assets/images/users/8.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Right sidebar -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- End Container fluid  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer">
                    © 2020 SISWA
                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <script src="../assets/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="../assets/plugins/bootstrap/js/popper.min.js"></script>
        <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- slimscrollbar scrollbar JavaScript -->
        <script src="js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="js/sidebarmenu.js"></script>
        <!--stickey kit -->
        <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
        <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!--stickey kit -->
        <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
        <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
        <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!--Custom JavaScript -->
        <script src="js/custom.min.js"></script>
        <!-- ============================================================== -->
  


       
        <!-- Select 2 -->
        <script src="../assets/plugins/switchery/dist/switchery.min.js"></script>
        <script src="../assets/plugins/select2/dist/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script src="../assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="../assets/plugins/multiselect/js/jquery.multi-select.js"></script>
        <!-- ============================================================== -->
       


        <!-- Editar-->
        <div id="Modal" class="modal fade"  role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Registrar pago</h4>
                    </div>
                    <form id="formRP" action="#">
                        <div class="modal-body">

                            <div class="card-body">
                                <div class="form-body">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group ">
                                                <label class="control-label">Tipo de pago</label>
                                                <%TipopagoJpaController tc = new TipopagoJpaController(); %>
                                                <select class="select2" id="tipo" style="width: 100%; "required onchange="seleccionarTipo()" >
                                                    <option value="">Selecciona un pago</option>
                                                    <%for (Tipopago t : tc.findTipopagoEntities()) {%>
                                                    <option value="<%=t.getId()%>" id="<%=t.getId()%>" tipoId="<%=t.getId()%>" tipoDesc="<%=t.getDescripcion()%>" tipoCosto="<%=t.getMonto()%>" ><%=t.getDescripcion() + " ( S/." + t.getMonto() + " )"%></option>

                                                    <% }%>

                                                </select>
                                            </div>
                                        </div>

                                    </div>
                                    <!--/row-->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group has-success">
                                                <label class="control-label">Descripcion</label>
                                                <input type="text" id="descripcion" class="form-control" >
                                            </div>
                                        </div>
                                    </div>


                                </div>


                            </div>
                        </div>



                        <div class="modal-footer">
                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-danger waves-effect waves-light" >Añadir</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /.modal -->


    <script>



        $('.select2').select2({
            // dropdownParent: $('#Modal')
        });


    </script>

    <script>


        var venta = new Array();

        var idTipo;
        var descripcionTipo;
        var montoTipo;

        $("#total").val("0.00");
        $("#tipo").val("");


        function listar() {
            $("#body").html("");
            console.log("");
            var total = 0;

            for (var i = 0; i < venta.length; i++) {
                $("#body").append("<tr><td class='text-left'><a class='btn text-left' onclick='eliminar(" + i + ")'><icon class='fa fa-trash'> </icon></a></td><td>" + venta[i].descripcion + "</td><td> " + venta[i].descripcionTipo + "</td><td> " + venta[i].montoTipo + "</td></tr>");


                total += (parseFloat(venta[i].montoTipo));

                console.log(venta[i]);

            }
            $("#total").val(Math.round(total*1000)/1000);
        }

        function seleccionarTipo() {
            var seleccionado = $("#tipo").val();

            idTipo = $("#" + seleccionado + "").attr("tipoId");
            descripcionTipo = $("#" + seleccionado + "").attr("tipoDesc");
            montoTipo = parseFloat($("#" + seleccionado + "").attr("tipoCosto"));

        }




        $(document).on('submit', '#formRP', function (e) {
            e.preventDefault();
            var descripcion = $("#descripcion").val();
            var detalle = {idTipo: idTipo, montoTipo: montoTipo, descripcionTipo: descripcionTipo, descripcion: descripcion};

            venta.push(detalle);

            listar();


        });

        function eliminar(id) {

            venta.splice(id, 1);
            listar();
        }

        function guardar() {
            if ($("#alumno").val() == "" || $("#fecha").val() == "" || $("#norden").val() == "" || venta.length == 0) {
                swal("Mensaje", "Complete los campos necesarios", "info");

            } else {
                $.ajax({
                    type: 'POST',
                    url: '../RegistrarPago',
                    data: {
                        venta: JSON.stringify(venta),
                        alumno: $("#alumno").val(),
                        fecha: $("#fecha").val(),
                        norden: $("#norden").val(),
                        total:$("#total").val()

                    },
                    success: function () {
                        cancelar();
                        window.location.replace("gestionar-pagos.jsp");


                    }
                });

            }
        }

        function cancelar() {
            venta = new Array();

            listar();
            $("#tipo").val("");
            $("#norden").val("");
            $("#alumno").val("");
            $("#fecha").val("");


        }










    </script>

</body>

</html>
