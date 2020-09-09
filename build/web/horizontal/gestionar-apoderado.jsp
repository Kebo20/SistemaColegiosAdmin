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
        <link href="../assets/plugins/wizard/steps.css" rel="stylesheet">
       

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
        <!--alerts CSS -->
        <link href="../assets/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css">
    </head>

    <body class="fix-header card-no-border logo-center">
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

                                        <li><a href="../logout"><i class="fa fa-power-off"></i> Salir</a></li>
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
                            <h3 class="text-themecolor m-b-0 m-t-0">Administrador</h3>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                                <li class="breadcrumb-item active">Gestionar Apoderado</li>
                            </ol>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                    <div id="ModalRA" class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body wizard-content">
                                    <h4 class="card-title">Registrar Apoderado</h4>

                                    <form id="formRapoderado" action="#" class="wizard-circle">
                                        <!-- Step 1 -->
                                        <h6>Información Personal</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dniRA">DNI:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="dniRA" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="nombreRA">Nombre:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="nombreRA" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="ap_paternoRA">Apellido Paterno:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="ap_paternoRA" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="ap_maternoRA">Apellido Materno:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="ap_maternoRA" required=""> </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="fecha_nacimientoRA">Fecha de Nacimiento:<b style="color: #710909">*</b></label>
                                                        <input type="date" class="form-control" id="fecha_nacimientoRA" requerid="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="direccionRA">Dirección:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="direccionRA" requerid="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="telefonoRA">Teléfono:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="telefonoRA" requerid="">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <!-- Step 2 -->
                                        <h6>Datos para el Sistema</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="correoRA">Correo</label>
                                                        <input type="text" class="form-control" id="correoRA">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="usuarioRA">Usuario<b style="color: #710909">*</b></label>
                                                        <input type="text" id="usuarioRA" class="form-control" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="contrasenaRA">Contraseña<b style="color: #710909">*</b></label>
                                                        <input type="text" id="contrasenaRA" class="form-control" required="">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <a href="gestionar-apoderado.jsp"><button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cerrar</button></a>
                                        <!-- Step 3 -->


                                        <!-- Step 4 -->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Validation wizard -->
                    <!-- sample modal content -->
                    <div id="ModalEA" class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body wizard-content">
                                    <h4 class="card-title">Editar Apoderado</h4>

                                    <form id="formEapoderado" action="#" class="wizard-circle">
                                        <!-- Step 1 -->
                                        <h6>Información Personal</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dniEA">DNI:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="dniEA" required="">
                                                        <input class="form-control" id="idEA" type="hidden" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="nombreEA">Nombre:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="nombreEA" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="ap_paternoEA">Apellido Paterno:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="ap_paternoEA" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="ap_maternoEA">Apellido Materno:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="ap_maternoEA" required="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="fecha_nacimientoEA">Fecha de Nacimiento:<b style="color: #710909">*</b></label>
                                                        <input type="date" class="form-control" id="fecha_nacimientoEA" requerid="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="direccionEA">Dirección:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="direccionEA" requerid="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="telefonoEA">Teléfono:<b style="color: #710909">*</b></label>
                                                        <input type="text" class="form-control" id="telefonoEA" requerid="">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <!-- Step 2 -->
                                        <h6>Datos para el Sistema</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="correoEA">Correo</label>
                                                        <input type="text" class="form-control" id="correoEA">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="usuarioEA">Usuario<b style="color: #710909">*</b></label>
                                                        <input type="text" id="usuarioEA" class="form-control" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="contrasenaEA">Contraseña<b style="color: #710909">*</b></label>
                                                        <input type="text" id="contrasenaEA" class="form-control" required="">
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <a href="gestionar-apoderado.jsp"><button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cerrar</button></a>
                                        <!-- Step 3 -->


                                        <!-- Step 4 -->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.modal -->
                    <!-- vertical wizard -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">

                                <div class="card-body">
                                    <h4 class="card-title">Lista de Apoderados</h4>

                                    <button  onclick="mostrarRA()" class="btn btn-dropbox" >Añadir</button>

                                    <h6 class="card-subtitle"></h6>
                                    <div class="table-responsive m-t-40">
                                        <table id="tableApoderado" class="display nowrap table table-hover table-striped table-bordered text-center text-dark" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Ap. Paterno</th>
                                                    <th>Ap. Materno</th>
                                                    <th>DNI</th>
                                                    <th>Nacimiento</th>
                                                    <th>Dirección</th>
                                                    <th>Teléfono</th>
                                                    <th>Correo</th>
                                                    <th>Usuario</th>
                                                    <th>Contraseña</th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>

                                            <tbody>


                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>

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
                <footer class="footer"> © 2020 SISWA </footer>
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
        <script src="../assets/plugins/moment/min/moment.min.js"></script>
        <script src="../assets/plugins/wizard/jquery.steps.min.js"></script>
        <script src="../assets/plugins/wizard/jquery.validate.min.js"></script>

        <!-- ============================================================== -->
 
        <!-- ============================================================== -->
        <!-- DATA TABLE  -->


        <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <!-- start - This is for export functionality only -->
        <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
        <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
        <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
        <!-- end - This is for export functionality only -->

        <!-- Select 2 -->
        <script src="../assets/plugins/switchery/dist/switchery.min.js"></script>
        <script src="../assets/plugins/select2/dist/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script src="../assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="../assets/plugins/multiselect/js/jquery.multi-select.js"></script>

        <!-- Sweet-Alert  -->
        <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
        <script src="../assets/plugins/wizard/steps.js"></script>
        <!-- ============================================================== -->
        

        <script >
                                        $("#ModalRA").hide();
                                        $("#ModalEA").hide();

                                        function mostrarRA() {
                                            $("#ModalEA").hide();
                                            $("#ModalRA").show();
                                        }
                                        ;

                                        $("#formRapoderado").steps({
                                            headerTag: "h6"
                                            , bodyTag: "section"
                                            , transitionEffect: "fade"
                                            , titleTemplate: '<span class="step">#index#</span> #title#'
                                            , labels: {
                                                previous: "Anterior",
                                                next: "Siguiente",
                                                finish: "Guardar"
                                            }
                                            , onFinished: function (event, currentIndex) {
                                                /*$("#finish").submit();*/
                                                    $.ajax({
                                                    type: 'POST',
                                                    url: '../RegistrarApoderado',
                                                    data: {
                                                        nombre: $("#nombreRA").val(),
                                                        ap_paterno: $("#ap_paternoRA").val(),
                                                        ap_materno: $("#ap_maternoRA").val(),
                                                        dni: $("#dniRA").val(),
                                                        fecha_nacimiento: $("#fecha_nacimientoRA").val(),
                                                        direccion: $("#direccionRA").val(),
                                                        telefono: $("#telefonoRA").val(),
                                                        correo: $("#correoRA").val(),
                                                        usuario: $("#usuarioRA").val(),
                                                        contrasena: $("#contrasenaRA").val()
                                                    },
                                                    success: function (result) {
                                                        swal("Correcto", result, "success");
                                                        document.forms[0].reset();
                                                        $('#tableApoderado').DataTable().ajax.reload();
                                                        $('#ModalRA').hide();
                                                    }
                                                });
                                                return false;
                                            }
                                        });

                                        $("#formEapoderado").steps({
                                            headerTag: "h6"
                                            , bodyTag: "section"
                                            , transitionEffect: "fade"
                                            , titleTemplate: '<span class="step">#index#</span> #title#'
                                            , labels: {
                                                previous: "Anterior",
                                                next: "Siguiente",
                                                finish: "Guardar"
                                            }
                                            , onFinished: function (event, currentIndex) {
                                                /*$("#finish").submit();*/
                                                    $.ajax({
                                                    type: 'POST',
                                                    url: '../EditarApoderado',
                                                    data: {
                                                        id: $("#idEA").val(),
                                                        nombre: $("#nombreEA").val(),
                                                        ap_paterno: $("#ap_paternoEA").val(),
                                                        ap_materno: $("#ap_maternoEA").val(),
                                                        dni: $("#dniEA").val(),
                                                        fecha_nacimiento: $("#fecha_nacimientoEA").val(),
                                                        edad: $("#edadEA").val(),
                                                        direccion: $("#direccionEA").val(),
                                                        telefono: $("#telefonoEA").val(),
                                                        correo: $("#correoEA").val(),
                                                        usuario: $("#usuarioEA").val(),
                                                        contrasena: $("#contrasenaEA").val()
                                                    },
                                                    success: function (result) {
                                                        $('#ModalEA').hide();
                                                        swal("Correcto", result, "success");
                                                        $('#tableApoderado').DataTable().ajax.reload();
                                                    }
                                                });
                                                return false;
                                            }
                                        });

                                        $(document).on('submit', '#formELapoderado', function () {
                                            $.ajax({
                                                type: 'POST',
                                                url: '../EliminarApoderado',
                                                data: {
                                                    id: $("#idELA").val()
                                                },
                                                success: function (result) {
                                                    $('#ModalELA').modal("hide");
                                                    swal("Correcto", result, "success");
                                                    $('#tableApoderado').DataTable().ajax.reload();
                                                }
                                            });
                                            return false;
                                        });


                                        $('#tableApoderado').DataTable({
                                            dom: 'Bfrtip',
                                            responsive: true,
                                            language: {
                                                "decimal": "",
                                                "emptyTable": "No hay datos",
                                                "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
                                                "infoEmpty": "Mostrando 0 datos",
                                                "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                                                "infoPostFix": "",
                                                "thousands": ",",
                                                "lengthMenu": "Mostrar _MENU_ datos",
                                                "loadingRecords": "Cargando...",
                                                "processing": "Procesando...",
                                                "search": "Buscar:",
                                                "zeroRecords": "Sin resultados encontrados",
                                                "paginate": {
                                                    "first": "Primero",
                                                    "last": "Ultimo",
                                                    "next": "Siguiente",
                                                    "previous": "Anterior"
                                                }
                                            },
                                            buttons: [
                                                'copy', 'csv', 'excel', 'pdf', 'print'
                                            ],
                                            ajax: {
                                                url: "../ListarApoderado",
                                                method: "post",
                                                dataSrc: "datos"

                                            },
                                            columns: [
                                                {data: "nombre"},
                                                {data: "ap_paterno"},
                                                {data: "ap_materno"},
                                                {data: "dni"},
                                                {data: "fecha_nacimiento"},
                                                {data: "direccion"},
                                                {data: "telefono"},
                                                {data: "correo"},
                                                {data: "usuario"},
                                                {data: "contrasena"},
                                                {data: "editar"},
                                                {data: "eliminar"}
                                            ]

                                        });

                                        function mostrarEditarApoderado(id, nombre, ap_paterno, ap_materno, dni, fecha_nacimiento, direccion, telefono, correo, usuario, contrasena) {
                                            $("#ModalRA").hide();
                                            $("#ModalEA").show();
                                            $("#idEA").val(id);
                                            $("#nombreEA").val(nombre);
                                            $("#ap_paternoEA").val(ap_paterno);
                                            $("#ap_maternoEA").val(ap_materno);
                                            $("#dniEA").val(dni);
                                            $("#fecha_nacimientoEA").val(fecha_nacimiento);
                                            $("#direccionEA").val(direccion);
                                            $("#telefonoEA").val(telefono);
                                            $("#correoEA").val(correo);
                                            $("#usuarioEA").val(usuario);
                                            $("#contrasenaEA").val(contrasena);
                                        }
                                        ;

                                        function eliminarApoderado(id) {

                                            $("#ModalELA").modal("show");
                                            $("#idELA").val(id);

                                        }
                                        ;

        </script>


        <!-- sample modal content -->
        <div id="ModalELA" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Eliminar apoderado</h4>
                    </div>
                    <form id="formELapoderado">
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="recipient-name" class="control-label text-dark">¿Está seguro de eliminar este apoderado?</label>

                                <input  class="form-control" id="idELA" type="hidden" />
                            </div>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-danger waves-effect waves-light">Eliminar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.modal -->

    </body>

</html>
