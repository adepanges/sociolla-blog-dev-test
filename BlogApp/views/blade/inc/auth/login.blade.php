@extends('layout.default')

@section('title', $title)

@section('content')
    <div class="text-center">
        <form class="form-signin"  method="POST" action="{{ site_url('auth/log/validate/web') }}">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <input type="hidden" name="auth_access_key" value="{{ $auth_access_key }}">

            @if (isset($error_message) && !empty($error_message))
                <div class="alert alert-danger"> {{ $error_message }} </div>
            @endif

            <div class="form-group">
                <div class="col-xs-12">
                    <input name="username" class="form-control" type="text" required="" placeholder="Username / Email" autofocus>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-12">
                    <input name="password" class="form-control" type="password" required="" placeholder="Password">
                </div>
            </div>
            <div class="form-group text-center m-t-20">
                <div class="col-xs-12">
                    <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Log In</button>
                </div>
            </div>
        </form>
    </div>
@endsection
