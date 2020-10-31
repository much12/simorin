<!DOCTYPE html>
<html>

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=Edge">
   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <title>SIMORIN | @yield('title')</title>
   <!-- Favicon -->
   <link rel="icon" href="favicon.ico" type="image/x-icon">

   <!-- Google Fonts -->
   <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

   <!-- Bootstrap Core -->
   <link href="{{ asset('assets/plugins/bootstrap/css/bootstrap.css') }}" rel="stylesheet">

   <!-- Waves Effect Css -->
   <link href="{{ asset('assets/plugins/node-waves/waves.css') }}" rel="stylesheet" />

   <!-- Animation Css -->
   <link href="{{ asset('assets/plugins/animate-css/animate.css') }}" rel="stylesheet" />

   <!-- JQuery DataTable Css -->
   <link href="{{ asset('assets/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css') }}" rel="stylesheet">

   <!-- Morris Chart Css -->
   <link href="{{ asset('assets/plugins/morrisjs/morris.css') }}" rel="stylesheet" />

   <!-- Custom Css -->
   <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">

   <!-- AdminBSB Themes -->
   <link href="{{ asset('assets/css/themes/all-themes.css') }}" rel="stylesheet" />

   <!-- Font Awesome -->
   <link href="{{ asset('assets/fontawesome/css/fontawesome.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/brands.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/solid.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/all.css') }}" rel="stylesheet">

   <!-- jQuery Core -->
   <script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>

   <style>
      ul.pagination {
         float: right;
      }

      .page-link {
         border: 1px solid #ddd !important;
         padding: 5px 12px !important;
      }
   </style>
</head>

<body class="theme-red" style="background-image: url('<?= asset('assets/images/bgwa.jpg') ?>'); background-size: 50rem;">
   <div class="page-loader-wrapper">
      <div class="loader">
         <div class="preloader">
            <div class="spinner-layer pl-red">
               <div class="circle-clipper left">
                  <div class="circle"></div>
               </div>
               <div class="circle-clipper right">
                  <div class="circle"></div>
               </div>
            </div>
         </div>
         <p>Loading ...</p>
      </div>
      
      <div class="overlay"></div>
      
      <nav class="navbar">
         <div class="container-fluid">
            <div class="navbar-header">
               <a href="javascript:void(0);" class="bars"></a>
               <a class="navbar-brand" href="#"><img style="width: 180px; height: 120px; margin-top: -50px;" src="{{asset('assets/images/logo9.png') }}"></a>
            </div>
         </div>
      </nav>
   </div>

   @include('sidebar')

   <section class="content">
      @yield('content')
   </section>

   <div class="modal modal-fade" id="ModalGlobal" tabindex="-1" role="dialog"></div>

   <!-- Bootstrap Core Js -->
   <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.js') }}"></script>

   <!-- Select Plugin Js -->
   <script src="{{ asset('assets/plugins/bootstrap-select/js/bootstrap-select.js') }}"></script>

   <!-- Slimscroll Plugin Js -->
   <script src="{{ asset('assets/plugins/jquery-slimscroll/jquery.slimscroll.js') }}"></script>

   <!-- Waves Effect Plugin Js -->
   <script src="{{ asset('assets/plugins/node-waves/waves.js') }}"></script>

   <!-- Jquery DataTable Plugin Js -->
   <script src="{{ asset('assets/plugins/jquery-datatable/jquery.dataTables.js') }}"></script>
   <script src="{{ asset('assets/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js') }}"></script>

   <!-- Custom Js -->
   <script src="{{ asset('assets/js/admin.js') }}"></script>

   <!-- Sweet Alert2 -->
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

   <!-- Script -->
   <script src="{{ asset('assets/js/script.js') }}"></script>
</body>

</html>