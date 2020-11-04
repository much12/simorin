<!DOCTYPE html>
<html>

<head>
   <meta charset="UTF-8">
   <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <title>SIMORIN | Login</title>

   <!-- Favicon-->
   <link rel="icon" href="{{asset('assets/favicon.ico')}}" type="image/x-icon">

   <!-- Google Fonts -->
   <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

   <!-- Bootstrap Core Css -->
   <link href="{{asset ('assets/plugins/bootstrap/css/bootstrap.css') }}" rel="stylesheet">

   <!-- Waves Effect Css -->
   <link href="{{asset ('assets/plugins/node-waves/waves.css') }}" rel="stylesheet" />

   <!-- Animation Css -->
   <link href="{{asset ('assets/plugins/animate-css/animate.css') }}" rel="stylesheet" />

   <!-- Custom Css -->
   <link href="{{asset ('assets/css/style.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/fontawesome.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/brands.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/solid.css') }}" rel="stylesheet">
   <link href="{{ asset('assets/fontawesome/css/all.css') }}" rel="stylesheet">

   <style>
      .login-box {
         padding: 1rem;
      }

      .card {
         height: 300px;
      }

      .card .body {
         font-size: 20px;
      }

      .btn:not(.btn-link):not(.btn-circle) {
         border-radius: 20px;
         margin-top: 15px;
         padding: 10px;
      }
   </style>
</head>

<body class="login-page">
   <div class="login-box">
      <div class="logo">
         <a><b>SI</b>MORIN</a>
         <small>Sistem Informasi Monitoring Prakerin</small>
      </div>

      <div class="card">
         <div class="body">
            <form id="frmLogin" action="{{url()->current()}}/proses" autocomplete="off" onsubmit="login();return false;">
               <div class="msg"><b>LOGIN</b></div>
               <div class="input-group">
                  <span class="input-group-addon">
                     <i class="fas fa-user"></i>
                  </span>

                  <div class="form-line">
                     <input type="email" class="form-control" name="email" id="email" placeholder="Email" required autofocus>
                  </div>
               </div>

               <div class="input-group">
                  <span class="input-group-addon">
                     <i class="fas fa-lock"></i>
                  </span>

                  <div class="form-line">
                     <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                  </div>
               </div>

               <button class="btn btn-block bg-pink waves-effect" type="submit">LOGIN</button>
            </form>
         </div>
      </div>
   </div>

   <!-- Jquery Core Js -->
   <script src="{{asset ('assets/plugins/jquery/jquery.min.js') }}"></script>

   <!-- Bootstrap Core Js -->
   <script src="{{asset ('assets/plugins/bootstrap/js/bootstrap.js') }}"></script>

   <!-- Waves Effect Plugin Js -->
   <script src="{{asset ('assets/plugins/node-waves/waves.js') }}"></script>

   <!-- Validation Plugin Js -->
   <script src="{{asset ('assets/plugins/jquery-validation/jquery.validate.js') }}"></script>

   <!-- Custom Js -->
   <script src="{{asset ('assets/js/admin.js') }}"></script>
   <script src="{{asset ('assets/js/pages/examples/sign-in.js') }}"></script>

   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

   <script src="{{ asset('assets/js/script.js') }}"></script>

   <script>
      function login() {
         var email = $('#email').val();
         var password = $('#password').val();
         $.ajax({
            url: '{{url()->current()}}/proses',
            dataType: 'json',
            method: 'GET',
            data: {
               email: email,
               password: password
            },
            success: function(response) {
               console.log(response);
               if (response.RESULT == 'OK') {
                  swalMessageSuccess(response.MESSAGE);

               } else {
                  swalMessageFailed(response.MESSAGE);
               }
            }
         }).fail(function() {
            swalError();
         })
      }
   </script>
</body>

</html>