<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
      <title>Welcome To | Bootstrap Based Admin Template - Material Design</title>
      <link rel="icon" href="favicon.ico" type="image/x-icon">
      <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
      <link href="{{ asset('assets/plugins/bootstrap/css/bootstrap.css') }}" rel="stylesheet">
      <link href="{{ asset('assets/plugins/node-waves/waves.css') }}" rel="stylesheet" />
      <link href="{{ asset('assets/plugins/animate-css/animate.css') }}" rel="stylesheet" />
      <link href="{{ asset('assets/plugins/morrisjs/morris.css') }}" rel="stylesheet" />
      <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">
      <link href="{{ asset('assets/css/themes/all-themes.css') }}" rel="stylesheet" />
      <link href="{{ asset('assets/fontawesome/css/fontawesome.css') }}" rel="stylesheet">
      <link href="{{ asset('assets/fontawesome/css/brands.css') }}" rel="stylesheet">
      <link href="{{ asset('assets/fontawesome/css/solid.css') }}" rel="stylesheet">
      <link href="{{ asset('assets/fontawesome/css/all.css') }}" rel="stylesheet">
   </head>
<body class="theme-red" style=" background-image: url('{{asset('assets/images/bgwa.jpg') }}'); background-size: 50rem; ">
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
            <p>Please wait...</p>
         </div>
      </div>
      <div class="overlay"></div>
      <nav class="navbar">
         <div class="container-fluid">
            <div class="navbar-header">
               <a href="javascript:void(0);" class="bars"></a>
               <a class="navbar-brand" href="index.html">SIMORIN</a>
            </div>
         </div>
      </nav>

      @include('sidebar')

      <section class="content">
         <div class="container-fluid">
            <div class="block-header">
               <h2>JURNAL</h2>
            </div>
            <div class="row clearfix">
               <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                  <div class="card">
                     <div class="header">
                        <div class="row clearfix">
                           <div class="col-xs-12 col-sm-6">
                              <h2>Jurnal Harian</h2>
                           </div>
                        </div>
                     </div>
                     <div class="body">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <script src="{{asset('assets/plugins/jquery/jquery.min.js') }}"></script>
      <script src="{{asset('assets/plugins/bootstrap/js/bootstrap.js') }}"></script>
      <script src="{{asset('assets/plugins/bootstrap-select/js/bootstrap-select.js') }}"></script>
      <script src="{{asset('assets/plugins/jquery-slimscroll/jquery.slimscroll.js') }}"></script>
      <script src="{{asset('assets/plugins/node-waves/waves.js') }}"></script>
      <script src="{{asset('assets/plugins/jquery-countto/jquery.countTo.js') }}"></script>
      <script src="{{asset('assets/plugins/raphael/raphael.min.js') }}"></script>
      <script src="{{asset('assets/plugins/morrisjs/morris.js') }}"></script>
      <script src="{{asset('assets/plugins/chartjs/Chart.bundle.js') }}"></script>
      <script src="{{asset('assets/plugins/flot-charts/jquery.flot.js') }}"></script>
      <script src="{{asset('assets/plugins/flot-charts/jquery.flot.resize.js') }}"></script>
      <script src="{{asset('assets/plugins/flot-charts/jquery.flot.pie.js') }}"></script>
      <script src="{{asset('assets/plugins/flot-charts/jquery.flot.categories.js') }}"></script>
      <script src="{{asset('assets/plugins/flot-charts/jquery.flot.time.js') }}"></script>
      <script src="{{asset('assets/plugins/jquery-sparkline/jquery.sparkline.js') }}"></script>
      <script src="{{asset('assets/js/admin.js') }}"></script>
      <script src="{{asset('assets/js/pages/index.js') }}"></script>
      <script src="{{asset('assets/js/demo.js') }}"></script>
   </body>
</html>