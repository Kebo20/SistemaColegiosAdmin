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
        <title>Sistema Web Acad�mico</title>
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

       
       
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
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-arrange-send-backward"></i><span class="hide-menu">Acad�mico</span></a>
                                <ul aria-expanded="false" class="collapse">
                                    <li><a href="gestionar-a�o.jsp">Gestionar A�o Escolar </a></li>
                                    <li><a href="gestionar-grado.jsp">Gestionar Grado </a></li>
                                    <li><a href="gestionar-seccion.jsp">Gestionar Secci�n</a></li>
                                    <li><a href="gestionar-periodo.jsp">Gestionar Periodo Acad�mico</a></li>
                                    <li><a href="gestionar-publicacion.jsp">Gestionar Publicaci�n</a></li>



                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="mdi mdi-widgets"></i><span class="hide-menu">Cursos</span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="gestionar-area.jsp">Gestionar �rea</a></li>
                                    <li><a href="gestionar-curso.jsp">Gestionar Cursos</a></li>
                                    <li><a href="gestionar-clase.jsp">Gestionar Clases</a></li>
                                    <li><a href="gestionar-horario.jsp">Gestionar Horario</a></li>

                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow " href="#" aria-expanded="false"><i class="fa fa-graduation-cap"></i><span class="hide-menu">Alumnos</span></a>
                                <ul aria-expanded="false" class="collapse">

                                    <li><a href="gestionar-alumno.jsp">Gestionar Alumno</a></li>
                                    <li><a href="gestionar-matricula.jsp">Gestionar Matr�cula</a></li>

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
                                <li class="breadcrumb-item active">Gestionar Periodos</li>
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
                    <div class="row">
                        <div class="col-12">
                            <div class="card">

                                <div class="card-body">
                                    <h2 class="card-title btn btn-dribbble">DATOS DEL PAGO</h2>
                                    <button onclick="imprimir()" class="btn btn-dropbox" style="position: absolute;top: 3%;right: 1%"><icon class="fa fa-print"></icon></button>

                                    <hr>
                                    <div id="imprimir">
                                        <div class="row"> 
                                            <div class="col-lg-3 left">

                                                <h5 class="card-title">Comprobante:</h5>
                                                <input class="form-control text-right text-dark"  readonly value="<%=request.getParameter("comprobante")%>"  />

                                            </div>
                                            <div class="col-lg-3 left">
                                                <h5 class="card-title">Fecha:</h5>
                                                <input class="form-control text-right text-dark"  readonly value="<%=request.getParameter("fecha")%>" />
                                            </div>
                                            <div class="col-lg-3 left">
                                                <h5 class="card-title">Alumno:</h5>
                                                <input class="form-control text-right text-dark"  readonly value="<%=request.getParameter("alumno")%>" />
                                            </div>
                                            <div class="col-lg-3 left">
                                                <h5 class="card-title">Total:</h5>
                                                <input class="form-control text-right text-dark"  readonly value="S/. <%=request.getParameter("total")%>" />
                                            </div>
                                        </div>



                                        <h6 class="card-subtitle"></h6>
                                        <div class="table-responsive m-t-40">
                                            <input type="hidden" id="pago" value="<%=request.getParameter("pago")%>">
                                            <table id="tableDetallepago" class="display nowrap table table-hover  table-bordered text-left text-dark table-dark" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>Descripci�n</th>
                                                        <th>Tipo</th>
                                                        <th>Monto (S/.)</th>


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
                    � 2020 SISWA
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


        <script>
                                        $(document).on('submit', '#formRP', function () {


                                            $.ajax({
                                                type: 'POST',
                                                url: '../RegistrarPeriodo',
                                                data: {
                                                    descripcion: $("#descripcionRP").val(),
                                                    fecha_inicio: $("#fecha_inicioRP").val(),
                                                    fecha_fin: $("#fecha_finRP").val(),
                                                    ano: $("#a�oRP").val()
                                                },
                                                success: function (result) {


                                                    swal("Correcto", result, "success");

                                                    document.forms[0].reset();
                                                    $('#tablePeriodo').DataTable().ajax.reload();
                                                    $('#ModalRP').modal("hide");

                                                }
                                            });


                                            return false;
                                        });
                                        $(document).on('submit', '#formEP', function () {


                                            $.ajax({
                                                type: 'POST',
                                                url: '../EditarPeriodo',
                                                data: {
                                                    id: $("#idEP").val(),
                                                    descripcion: $("#descripcionEP").val(),
                                                    fecha_inicio: $("#fecha_inicioEP").val(),
                                                    fecha_fin: $("#fecha_finEP").val(),
                                                    ano: $("#a�oEP").val()
                                                },
                                                success: function (result) {

                                                    $('#ModalEP').modal("hide");
                                                    swal("Correcto", result, "success");


                                                    $('#tablePeriodo').DataTable().ajax.reload();


                                                }
                                            });


                                            return false;
                                        });
                                        $(document).on('submit', '#formELP', function () {


                                            $.ajax({
                                                type: 'POST',
                                                url: '../EliminarPeriodo',
                                                data: {
                                                    id: $("#idELP").val()
                                                },
                                                success: function (result) {

                                                    $('#ModalELP').modal("hide");
                                                    swal("Correcto", result, "success");


                                                    $('#tablePeriodo').DataTable().ajax.reload();


                                                }
                                            });


                                            return false;
                                        });


                                        $('#tableDetallepago').DataTable({
                                            dom: 'Bfrtip',
                                            responsive: true,
                                            searching: false,
                                            "bPaginate": false,
                                            language: {
                                                "decimal": "",
                                                "emptyTable": "No hay datos",
                                                "info": "",
                                                "infoEmpty": "Mostrando 0 datos",
                                                "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                                                "infoPostFix": "",
                                                "thousands": ",",
                                                "lengthMenu": "Mostrar _MENU_ datos",
                                                "loadingRecords": "Cargando...",
                                                "processing": "Procesando...",
                                                "search": "Buscar:",
                                                "zeroRecords": "Sin resultados encontrados"
                                            },
                                            buttons: [
                                            ],
                                            ajax: {
                                                url: "../ListarDetallepago",
                                                method: "post",
                                                dataSrc: "datos",
                                                data: {idpago: $('#pago').val()}


                                            },
                                            columns: [
                                                {data: "descripcion"},
                                                {data: "tipo"},
                                                {data: "monto"}



                                            ]

                                        });

                                        function editarPeriodo(id, descripcion, fi, ff, ano) {

                                            $("#a�oEP").val(ano);
                                            $("#a�oEP").change();
                                            $("#ModalEP").modal("show");
                                            $("#descripcionEP").val(descripcion);
                                            $("#idEP").val(id);
                                            $("#fecha_inicioEP").val(fi);
                                            $("#fecha_finEP").val(ff);



                                        }
                                        ;
                                        function eliminarPeriodo(id) {

                                            $("#ModalELP").modal("show");

                                            $("#idELP").val(id);

                                        }

                                        ;

        </script>




        <script>
            function imprimir() {
                var contenido = document.getElementById("imprimir").innerHTML;
                var contenidoOriginal = document.body.innerHTML;

                document.body.innerHTML = contenido;

                window.print();

                document.body.innerHTML = contenidoOriginal;
            }

            $(document).ready(function () {

                $(".select2").select2();
            });
        </script>

    </body>

</html>
