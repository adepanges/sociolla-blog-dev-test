@extends('layout.default')

@section('title', $title)

@section('load_css')
        @parent
        <link rel="stylesheet" href="{{ base_url('plugins/sweetalert/sweetalert.css') }}" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="{{ base_url('plugins/bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.css') }}" type="text/css" />
@endsection

@section('load_js')
@parent
        <script src="{{ base_url('plugins/sweetalert/sweetalert.min.js') }}"></script>
        <script src="{{ base_url('plugins/sweetalert/jquery.sweet-alert.custom.js')}}"></script>
        <script src="{{ base_url('js/validator.js') }}"></script>
        <script src="{{ base_url('plugins/ckeditor/ckeditor.js') }}"></script>
        <script src="{{ base_url('plugins/bootstrap-tagsinput-latest/dist/bootstrap-tagsinput.min.js') }}"></script>

        <script src="{{ base_url('js/module/post.js') }}" type="text/javascript"></script>
@endsection

@section('header')
    {{--  --}}
@endsection

@section('content')
            <!-- .row -->
            <div class="row">
                <div class="col-md-12">
                    <form id="formData" data-toggle="validator" data-delay="100">
                        <input type="hidden" name="blog_id" value="{{ $blog_id }}">
                        <div class="form-group">
                            <label class="control-label">Slug</label>
                            <input type="text" class="form-control" name="slug" data-error="Hmm, Slug belum dibuat" required>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Title</label>
                            <div class="row">
                                <div class="col-md-10">
                                    <input type="text" class="form-control" name="title" data-error="Hmm, Title harap diisi" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="col-md-2">
                                    <button type="button" class="btn btn-primary form-control" onclick="generateSlug()">Generate slug</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Content</label>
                            <textarea id="editor" class="textarea_editor form-control" rows="15" name="content" data-error="Hmm, Content harap diisi" required></textarea>
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Tags</label><br>
                            <input type="text" value="" data-role="tagsinput" name="tag">
                        </div>


                        <div class="row">
                            <div class="col-md-8">
                            </div>
                            <div class="col-md-4">
                                <button type="button" class="btn btn-info form-control" onclick="saveBlog()">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- .row -->
@endsection
