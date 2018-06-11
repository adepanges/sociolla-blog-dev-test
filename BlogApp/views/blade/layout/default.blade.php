<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="adepanges">
        <meta name="description" content="">

        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Favicon icon -->
        <title>@yield('title')</title>

@section('load_css')
        <link href="{{ base_url('css/style.css') }}" rel="stylesheet">
        <link href="{{ base_url('bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
@show
        <script type="text/javascript">
            document.app = {
                base_url: '{{ base_url() }}',
                site_url: '{{ site_url() }}'
            }
        </script>
    </head>
    <body class="fix-header">
        <div class="preloader" style="display: none;">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
            </svg>
        </div>
        <div class="wrapper">

@yield('header')

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <main role="main" class="container">
                        <h1 class="blog-post-title"><a href="{{ site_url() }}">Sociolla Blog Dev Test</a></h1>
                        <hr>
                        @if(!empty($profile))
                            Hai {{ $profile['full_name'] }} [<a href="{{ site_url('auth/log/out') }}" style="color: #F00;">out</a>]
                        @else
                            [<a href="{{ site_url('auth/log/out') }}">login</a>]
                        @endif
                        <br>
                        <br>
@yield('content')

                        <br>
                        <br>
                        <br>
                    </main>
                </div>
                <!-- /.container-fluid -->
                <footer class="footer text-center"> {{ date('Y') }} &copy; Ade Pangestu @ Sociolla Dev Test </footer>
            </div>
            <!-- /#page-wrapper -->
        </div>
@section('load_js')
        <script src="{{ base_url('js/jquery-3.3.1.min.js') }}"></script>
        <script src="{{ base_url('bootstrap/js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ base_url('js/helper.js') }}"></script>
@show

@include('render_info')
    </body>
</html>
