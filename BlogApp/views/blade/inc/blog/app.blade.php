@extends('layout.default')

@section('title', $title)

@section('load_css')
        <link href="{{ base_url('plugins/sweetalert/sweetalert.css') }}" rel="stylesheet" type="text/css">
        @parent
@endsection

@section('load_js')
@parent
        <script src="{{ base_url('plugins/sweetalert/sweetalert.min.js') }}"></script>
        <script src="{{ base_url('plugins/sweetalert/jquery.sweet-alert.custom.js')}}"></script>
        <script src="{{ base_url('js/validator.js') }}"></script>

        {{-- <script src="{{ base_url('js/module/admin/product.js') }}" type="text/javascript"></script> --}}
@endsection

@section('header')
    {{--  --}}
@endsection

@section('content')

            @if(!empty($profile))
            <div class="row">
                <div class="col-md-12">
                    <a class="btn btn-info btn-lg form-control" href="{{ site_url('blog/post') }}">Tambah Blog</a>
                </div>
            </div>
            <br>
            @endif

            @if(!empty($blog_tag_filter))
            <br>
            <hr>
            <h4>Tag Filtered <span class="label-info">{{ $blog_tag_filter }}</span> [<a href="{{ site_url('blog/tag_filter/'.base64_encode(' ')) }}" style="color: #F00;">clear</a>]</h4>
            <hr>
            <br>
            @endif
            <!-- .row -->
            <div class="row">
                <div class="col-md-12">

                    @foreach ($blog as $key => $value)
                        <?php
                        $creator = '';
                        if(!empty($value->created_by_full_name))
                        {
                            $creator = 'by <a href="#">'.$value->created_by_full_name.'</a>';
                        }

                        $action = '';

                        if(!empty($profile))
                        {
                            $action = '<button class="btn" onclick="window.location = `'.site_url('blog/post/'.$value->blog_id).'`"><img src="'.base_url('images/edit.png').'" width="30px"></button>';
                            $action .= '<button class="btn" onclick="del('.$value->blog_id.')"><img src="'.base_url('images/del.png').'" width="30px"></button>';
                        }

                        ?>
                        <div class="blog-post">
                            <h2 class="blog-post-title">{{ $value->title }} {!! $action !!}</h2>
                            <p class="blog-post-meta">{{ date('F d, Y', strtotime($value->created_at)) }} {!! $creator !!}</p>

                            <p>{!! html_entity_decode ($value->content) !!}</p>

                            @if(!empty($value->tag))
                                <?php
                                $tags_expld = explode(',',$value->tag);
                                ?>
                                Tags
                                @foreach ($tags_expld as $key => $value)
                                    <a class="btn btn-info" href="{{ site_url('blog/tag_filter/'.base64_encode($value)) }}">{{ $value }}</a>
                                @endforeach
                            @endif
                        </div>
                        <hr>
                    @endforeach

                    <?php
                    $disable_newer = '';
                    $disable_older = '';
                    $older_page = $current_page + 1;
                    $newer_page = $current_page - 1;

                    if($current_page == 1) $disable_newer = 'disabled';
                    if($max_page == $current_page) $disable_older = 'disabled';
                    ?>

                    <br>
                    <nav class="blog-pagination">
                        <a class="btn btn-outline-primary {{ $disable_older }}" href="{{ site_url('blog/page/'.$older_page) }}">Older</a>
                        <a class="btn btn-outline-primary {{ $disable_newer }}" href="{{ site_url('blog/page/'.$newer_page) }}">Newer</a>
                    </nav>
                </div>
            </div>
@endsection
