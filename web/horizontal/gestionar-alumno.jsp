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
        <link href="../assets/plugins/wizard/steps.css" rel="stylesheet">
        <link rel="stylesheet" href="../assets/plugins/dropify/dist/css/dropify.min.css">
   
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
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio </a></li>
                                <li class="breadcrumb-item active">Gestionar Alumnos</li>
                            </ol>
                        </div>

                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ========REGISTRAR ALUMNO====================================================== -->

                    <div id="divRP" class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body wizard-content">
                                    <h4 class="card-title">Registrar alumno </h4>

                                    <button  onclick="cancelar()" class="btn btn-dropbox" style="position: absolute;top: 2%;right: 2%"><icon class="fa fa-close"></icon></button>

                                    <form id="formRP"  class=" wizard-circle" enctype="multipart/form-data">
                                        <!-- Step 1 -->
                                        <h6>Información Personal</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="firstName1">DNI:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" maxlength="8" class="form-control" id="dniRP" name="dniRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="firstName1">Nombres:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="nombresRP" name="nombresRP" required> </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Apellido Paterno:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="paternoRP" name ="paternoRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Apellido Materno:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="maternoRP"  name="maternoRP" required> </div>
                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="date1">Fecha de Nacimiento:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="date" class="form-control" id="nacimientoRP" name="nacimientoRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="date1">Sexo:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <select id="sexoRP" name="sexoRP" class="custom-select form-control"required> 
                                                            <option value="">Seleccione Sexo</option>
                                                            <option value="m">Masculino</option>
                                                            <option value="f">Femenino</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Lenguas:</label>
                                                        <input type="text" class="form-control" id="lenguasRP"  name="lenguasRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Discapacidad:</label>
                                                        <input type="text" class="form-control" id="discapacidadRP"  name="discapacidadRP" required> </div>
                                                </div>

                                            </div>
                                        </section>
                                        <!-- Step 2 -->
                                        <h6>Contacto</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Correo:</label>
                                                        <input type="email" class="form-control" id="correoRP" name="correoRP"> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Teléfono:</label>
                                                        <input type="text" class="form-control" id="telefonoRP" name="telefonoRP"> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Dirección:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="direccionRP" name="direccionRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Distrito:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="distritoRP" name="distritoRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Provincia:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="provinciaRP" name="provinciaRP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Departamento:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="departamentoRP" name="departamentoRP" required> </div>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- Step 3 -->
                                        <h6>Estudios</h6>
                                        <section>
                                            <div class="row">


                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Estado:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <select id="estadoRP" name="estadoRP" class="custom-select form-control"required> 
                                                            <option value="">Seleccione Estado del Alumno</option>
                                                            <option value="a">Activo</option>
                                                            <option value="n">No activo</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Código Minedu:</label>

                                                        <input type="text" class="form-control" id="codmineduRP" name="codmineduRP" > </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Colegio Anterior:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="colegioRP" name="colegioRP" required> </div>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- Step 4 -->
                                        <h6>Usuario</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="behName1">Usuario</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text"  class="form-control" id="usuarioRP"   name="usuarioRP" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="participants1">Contraseña</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="contraseñaRP" name="contraseñaRP" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label for="participants1">Foto</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="file"  id="fotoRP" name="fotoRP" class="dropify" data-allowed-file-extensions = "pdf png jpg"  >
                                                    </div>
                                                </div>
                                                <div id="cargandoR"></div>
                                            </div>
                                            <button style="background-color: #ffffff;border:#ffffff " id="registrar" type="submit"></button>

                                        </section>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--EDITAR ALUMNO -->

                    <div id="divEP" class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body wizard-content">
                                    <h4 class="card-title">Editar alumno </h4>

                                    <button  onclick="cancelar()" class="btn btn-dropbox" style="position: absolute;top: 2%;right: 2%"><icon class="fa fa-close"></icon></button>

                                    <form id="formEP"  class=" wizard-circle" enctype="multipart/form-data">
                                        <!-- Step 1 -->
                                        <h6>Información Personal</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="firstName1">DNI:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" maxlength="8" class="form-control" id="dniEP" name="dniEP" required> </div>
                                                        <input type="hidden"   id="idEP" name="idEP" > 
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="firstName1">Nombres:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="nombresEP" name="nombresEP" required> </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Apellido Paterno:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="paternoEP" name ="paternoEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Apellido Materno:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="maternoEP"  name="maternoEP" required> </div>
                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="date1">Fecha de Nacimiento:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="date" class="form-control" id="nacimientoEP" name="nacimientoEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="date1">Sexo:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <select id="sexoEP" name="sexoEP" class="custom-select form-control"required> 
                                                            <option value="">Seleccione Sexo</option>
                                                            <option value="m">Masculino</option>
                                                            <option value="f">Femenino</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Lenguas:</label>
                                                        <input type="text" class="form-control" id="lenguasEP"  name="lenguasEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastName1">Discapacidad:</label>
                                                        <input type="text" class="form-control" id="discapacidadEP"  name="discapacidadEP" required> </div>
                                                </div>

                                            </div>
                                        </section>
                                        <!-- Step 2 -->
                                        <h6>Contacto</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Correo:</label>
                                                        <input type="email" class="form-control" id="correoEP" name="correoEP"> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Teléfono:</label>
                                                        <input type="text" class="form-control" id="telefonoEP" name="telefonoEP"> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Dirección:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="direccionEP" name="direccionEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Distrito:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="distritoEP" name="distritoEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Provincia:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="provinciaEP" name="provinciaEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber1">Departamento:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="departamentoEP" name="departamentoEP" required> </div>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- Step 3 -->
                                        <h6>Estudios</h6>
                                        <section>
                                            <div class="row">


                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Estado:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                       <select id="estadoEP" name="estadoEP" class="custom-select form-control"required> 
                                                            <option value="">Seleccione Estado del Alumno</option>
                                                            <option value="a">Activo</option>
                                                            <option value="n">No activo</option>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group fa-">
                                                        <label for="emailAddress1">Código Minedu:</label>

                                                        <input type="text" class="form-control" id="codmineduEP" name="codmineduEP" required> </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="emailAddress1">Colegio Anterior:</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="colegioEP" name="colegioEP" required> </div>
                                                </div>

                                            </div>

                                        </section>
                                        <!-- Step 4 -->
                                        <h6>Usuario</h6>
                                        <section>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="behName1">Usuario</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text"  class="form-control" id="usuarioEP"   name="usuarioEP" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="participants1">Contraseña</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="text" class="form-control" id="contraseñaEP" name="contraseñaEP" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label for="participants1">Foto</label>
                                                        <span><icon class="fa fa-asterisk"></icon></span>
                                                        <input type="file"  id="fotoEP" name="fotoEP" class="dropify" data-allowed-file-extensions = "pdf png jpg"  >
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group ">
                                                        <label for="participants1">Foto Actual</label>
                                                        <img  id="fotoActual" class="form-control" >
                                                        <input  id="fotoAnterior" name="fotoAnterior" type="hidden" >

                                                    </div>
                                                    

                                                </div>
                                                <div id="cargandoE"></div>
                                            </div>
                                            <button style="background-color: #ffffff;border:#ffffff " id="editar" type="submit"></button>

                                        </section>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>




                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-12">
                            <div class="card">

                                <div class="card-body">

                                    <h4 class="card-title"></h4>
                                    <button  onclick="registrarProfesor()" class="btn btn-dropbox" style="position: absolute;top: 3%;right: 1%">Añadir <icon class="fa fa-plus-circle"></icon></button>


                                    <div class="table-responsive m-t-40">
                                        <table id="tableProfesor" class="display nowrap table table-hover table-striped table-bordered text-center text-dark" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Apellido Paterno</th>
                                                    <th>Apellido Materno</th>
                                                    <th>DNI</th>
                                                    <th>Nacimiento</th>
                                                    <th>Lenguas</th>
                                                    <th>Discapacidad</th>
                                                    <th>Edad</th>
                                                    <th>Cód. Minedu</th>
                                                    <th>Dirección</th>
                                                    <th>Distrito</th>
                                                    <th>Provincia</th>
                                                    <th>Departamento</th>
                                                    <th>Teléfono</th>
                                                    <th>Correo</th>
                                                    <th>Colegio anterior</th>
                                                    <th>Estado</th>

                                                    <th>Sexo</th>
                                                    <th>Usuario</th>
                                                    <th>Contraseña</th>
                                                    <th>Apoderados</th>
                                                    <th>Foto</th>
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

        <!--Custom JavaScript -->
        <script src="js/custom.min.js"></script>
        <script src="../assets/plugins/moment/min/moment.min.js"></script>
        <script src="../assets/plugins/wizard/jquery.steps.min.js"></script>
        <script src="../assets/plugins/wizard/jquery.validate.min.js"></script>
        <!-- ============================================================== -->
        <!-- Sweet-Alert  -->
        <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
        <script src="../assets/plugins/wizard/steps.js"></script>


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


        <!-- Sweet-Alert  -->
        <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
        <script src="../assets/plugins/sweetalert/jquery.sweet-alert.custom.js"></script>
        <!-- Select 2 -->
        <script src="../assets/plugins/switchery/dist/switchery.min.js"></script>
        <script src="../assets/plugins/select2/dist/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
        <script src="../assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
        <script src="../assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="../assets/plugins/multiselect/js/jquery.multi-select.js"></script>
        <!-- ============================================================== -->
      

        <!-- jQuery file upload -->
        <script src="../assets/plugins/dropify/dist/js/dropify.min.js"></script>
        <script>
                                        $(document).on('submit', '#formRP', function () {
                                            $("#cargandoR").html(" <img width='40px' height='40px' src='../imagenes/cargando.gif'  >");
                                            $.ajax({
                                                type: 'POST',
                                                url: '../RegistrarAlumno',
                                                data: new FormData(this),
                                                contentType: false,
                                                cache: false,
                                                processData: false,
                                                success: function (r) {
                                                    if (r === ":)") {
                                                        swal("Correcto", r, "success");
                                                    } else {
                                                        swal("Error", r, "error");
                                                    }

                                                    $('#tableProfesor').DataTable().ajax.reload();
                                                    $("#divRP").hide();
                                                    $("#cargandoR").html("");
                                                  //  $("#formRP")[0].reset();


                                                }
                                            });

                                            return false;
                                        });


                                        $(document).on('submit', '#formEP', function () {

                                            $("#cargandoE").html(" <img width='40px' height='40px' src='../imagenes/cargando.gif'  >");
                                            $.ajax({
                                                type: 'POST',
                                                url: '../EditarAlumno',
                                                data: new FormData(this),
                                                contentType: false,
                                                cache: false,
                                                processData: false,
                                                success: function (r) {
                                                    if (r === ":)") {
                                                        swal("Correcto", r, "success");
                                                    } else {
                                                        swal("Error", r, "error");
                                                    }
                                                    $(".dropify-clear").click();
                                                    $('#tableProfesor').DataTable().ajax.reload();
                                                    $("#divEP").hide();
                                                    $("#cargandoE").html("");
                                                    $("#formEP")[0].reset();



                                                }
                                            });


                                            return false;
                                        });

                                        $(document).ready(function () {
                                            // Basic
                                            $('.dropify').dropify({
                                                messages: {
                                                    default: '  ',
                                                    replace: ' Arrastra y suelta o haz clic para reemplazar ',
                                                    remove: 'Borrar',
                                                    error: ' Ooops, sucedió algo incorrecto '
                                                },
                                                error: {
                                                    fileSize: ' El tamaño del archivo es demasiado grande ({{value}} max). ',
                                                    minWidth: ' El ancho de la imagen es demasiado pequeño ({{value}}} px min). ',
                                                    maxWidth: ' El ancho de la imagen es demasiado grande ({{value}}} px max). ',
                                                    minHeight: '',
                                                    maxHeight: ' La altura de la imagen es demasiado grande ({{value}} px max). ',
                                                    imageFormat: ' El formato de imagen no está permitido (solo {{value}}). '
                                                }

                                            });


                                        });

                                        $("#formRP").steps({
                                            headerTag: "h6"
                                            , bodyTag: "section"
                                            , transitionEffect: "fade"
                                            , titleTemplate: '<span class="step">#index#</span> #title#'
                                            , labels: {
                                                next: "Siguiente",
                                                previous: "Anterior",
                                                finish: "Guardar"
                                            }
                                            , onFinished: function (event, currentIndex) {

                                                $("#registrar").click();


                                            }
                                        });
                                        $("#formEP").steps({
                                            headerTag: "h6"
                                            , bodyTag: "section"
                                            , transitionEffect: "fade"
                                            , titleTemplate: '<span class="step">#index#</span> #title#'
                                            , labels: {
                                                next: "Siguiente",
                                                previous: "Anterior",
                                                finish: "Guardar"
                                            }
                                            , onFinished: function (event, currentIndex) {
                                                $("#editar").click();
                                            }
                                        });
        </script>
        <!-- ============================================================== -->
        <!-- Style switcher -->
        <!-- ============================================================== -->
        <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
        <script>

                                        $(document).on('submit', '#formELP', function () {


                                            $.ajax({
                                                type: 'POST',
                                                url: '../EliminarAlumno',
                                                data: {
                                                    id: $("#idELP").val()
                                                },
                                                success: function (r) {
                                                    $('#tableProfesor').DataTable().ajax.reload();


                                                    $('#ModalELP').modal("hide");
                                                    if (r === ":)") {
                                                        swal("Correcto", r, "success");
                                                    } else {
                                                        swal("Error", r, "error");
                                                    }



                                                }
                                            });


                                            return false;
                                        });


                                        $('#tableProfesor').DataTable({
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
                                                url: "../ListarAlumno",
                                                method: "post",
                                                dataSrc: "datos"

                                            },
                                            columns: [
                                                {data: "nombre"},
                                                {data: "paterno"},
                                                {data: "materno"},
                                                {data: "dni"},
                                                {data: "nacimiento"},
                                                {data: "lenguas"},
                                                {data: "discapacidad"},
                                                {data: "edad"},
                                                {data: "codminedu"},
                                                {data: "direccion"},
                                                {data: "distrito"},
                                                {data: "provincia"},
                                                {data: "departamento"},
                                                {data: "telefono"},
                                                {data: "correo"},
                                                {data: "colegio"},
                                                {data: "estado"},
                                                {data: "sexo"},
                                                {data: "usuario"},
                                                {data: "contraseña"},
                                                {data: "apoderados"},
                                                {data: "foto"},
                                                {data: "editar"},
                                                {data: "eliminar"}


                                            ]

                                        });

                                        //ocultos al inicializar
                                        $("#divEP").hide();
                                        $("#divRP").hide();
                                        function registrarProfesor() {
                                            $("#divEP").hide();
                                            $("#divRP").show();
                                        }
                                        ;

                                        function cancelar() {
                                            $("#divEP").hide();
                                            $("#divRP").hide();
                                            $(".dropify-clear").click();
                                           // $("#formEP")[0].reset();
                                           // $("#formRP")[0].reset();


                                        }
                                        ;
                                        function editarProfesor(id, nombre, paterno, materno,dni,nacimiento,lenguas,discapacidad,codminedu,direccion,distrito,provincia,departamento,telefono,correo,colegio,estado, sexo,usuario,contraseña,foto) {

                                            $("#divRP").hide();
                                            $("#divEP").show();
                                            $("#idEP").val(id);
                                            $("#nombresEP").val(nombre);
                                            $("#paternoEP").val(paterno);
                                            $("#maternoEP").val(materno);
                                            $("#maternoEP").val(materno);
                                            $("#lenguasEP").val(lenguas);
                                            $("#discapacidadEP").val(discapacidad);
                                            $("#codmineduEP").val(codminedu);
                                            $("#contraseñaEP").val(contraseña);
                                            $("#correoEP").val(correo);
                                            $("#direccionEP").val(direccion);
                                            $("#distritoEP").val(distrito);
                                            $("#provinciaEP").val(provincia);
                                            $("#departamentoEP").val(departamento);
                                            $("#dniEP").val(dni);
                                            $("#estadoEP").val(estado);
                                            $("#estadoEP").change();
                                            $("#colegioEP").val(colegio);
                                            $("#sexoEP").val(sexo);
                                            $("#sexoEP").change();
                                            $("#telefonoEP").val(telefono);
                                            $("#usuarioEP").val(usuario);
                                            $("#nacimientoEP").val(nacimiento);
                                            $("#nacimientoEP").change();
                                            $("#fotoActual").attr("src", "../archivos/"+foto);
                                            $("#fotoAnterior").val(foto);




                                        }
                                        ;
                                        function eliminarProfesor(id) {
                                            $("#idELP").val(id);

                                            $("#ModalELP").modal("show");


                                        }
                                        ;
                                        function fotoProfesor(url, nombre) {
                                            $("#fotoP").attr("src", "../archivos/"+url);
                                            $("#nombrefotoP").html(nombre);
                                            $("#ModalFoto").modal("show");

                                        }
                                        ;
                                        $('#dniRP').on('keyup', function () {


                                            $.ajax({
                                                type: 'POST',
                                                url: '../dni',
                                                dataType: "json",
                                                data: {
                                                    dni: $("#dniRP").val()
                                                },
                                                success: function (result) {
                                                    $("#nombresRP").val(result.nombres);
                                                    $("#paternoRP").val(result.apellidoPaterno);
                                                    $("#maternoRP").val(result.apellidoMaterno);


                                                }
                                            });


                                            return false;
                                        });
                                        $('#usuarioRP').on('click', function () {



                                            $("#usuarioRP").val($('#nombresRP').val().slice(0, 1) + $('#paternoRP').val() + $('#maternoRP').val().slice(0, 1));
                                            $("#contraseñaRP").val($("#dniRP").val());




                                        });





        </script>




        <!-- Eliminar -->
        <div id="ModalFoto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 id="nombrefotoP" class="modal-title"></h4>
                    </div>
                    <div class="modal-body align-center">

                        <img id="fotoP" height="100%" width="100%">


                    </div>
                    <div class="modal-footer">

                    </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.modal -->


        <!-- Eliminar -->
        <div id="ModalELP" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Eliminar Alumno</h4>
                    </div>
                    <form id="formELP">
                        <div class="modal-body">

                            <div class="form-group">
                                <label for="recipient-name" class="control-label text-dark">¿Está seguro de eliminar este alumno?</label>

                                <input  class="form-control" id="idELP" type="hidden" />
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
        <script>

            $(document).ready(function () {

                $(".select2").select2();
            });
        </script>

    </body>

</html>
