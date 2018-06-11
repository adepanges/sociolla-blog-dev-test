<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
        <title>@yield('title')</title>

@section('load_css')
        <link href="{{ base_url('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
@show
    </head>
    <body>

        <!-- Preloader -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
            </svg>
        </div>

        <section id="wrapper" class="login-register">
            <div class="login-box login-sidebar">
                <div class="white-box">
@yield('content')
                </div>
            </div>
        </section>

@section('load_js')
        <script src="{{ base_url('plugins/bower_components/jquery/dist/jquery.min.js') }}"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="{{ base_url('bootstrap/dist/js/bootstrap.min.js') }}"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="{{ base_url('plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js') }}"></script>
        <!--slimscroll JavaScript -->
        <script src="{{ base_url('js/jquery.slimscroll.js') }}"></script>

        <script src="{{ base_url('js/waves.js') }}"></script>
        <!-- Custom Theme JavaScript -->
        <script src="{{ base_url('js/custom.js') }}"></script>
        <!--Style Switcher -->
        <script src="{{ base_url('plugins/bower_components/styleswitcher/jQuery.style.switcher.js') }}"></script>
@show

@include('render_info')
    </body>
</html>
