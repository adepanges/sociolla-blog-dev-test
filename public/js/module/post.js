$(document).ready(function() {
    CKEDITOR.replace('editor', { toolbar: 'Basic' });

    $.ajax({
        method: "POST",
        url: document.app.site_url+'/blog/get/byid/'+$('#formData [name=blog_id]').val()
    })
    .done(function( response ) {
        formPopulate('#formData', response);
        CKEDITOR.instances.editor.setData(response.content);
    });
});

function saveBlog()
{
    if(formValidator('#formData')){
        var data = serialzeForm('#formData');

        data.content = CKEDITOR.instances.editor.getData()

        $.ajax({
            method: "POST",
            url: document.app.site_url+'/blog/post/save',
            data: data
        })
        .done(function( response ) {
            var title = 'Berhasil!',
                timer = 1000;
                showConfirmButton = false;

            if(!response.status) {
                var timer = 3000;
                title = 'Gagal!';
                showConfirmButton = true;
            } else {
                // dataTableComponent.ajax.reload()
            }


            formPopulate('#formData', {
                blog_id: response.blog_id
            });

            swal({
                title: title,
                text: response.message,
                timer: timer,
                showConfirmButton: showConfirmButton
            });
        });
    }
}

function generateSlug(){
    $('#formData [name=slug]').val(convertToSlug($('#formData [name=title]').val()))
}

function del(id){
    swal({
        title: "Are you sure?",
        text: "Anda akan menghapus data ini!",
        type: "warning",
        showCancelButton: true,
        confirmButtonClass: "btn-danger",
        confirmButtonText: "Hapus",
        cancelButtonText: "Batal",
        closeOnConfirm: false,
        closeOnCancel: true
    },
    function(isConfirm) {
        if (isConfirm) {
            $('.preloader').fadeIn();
            $.ajax({
                method: "POST",
                url: document.app.site_url+'/blog/del/index/'+id
            })
            .done(function( response ) {
                $('.preloader').fadeOut();
                dataTableComponent.ajax.reload()
                var title = 'Berhasil!';
                if(!response.status) title = 'Gagal!';

                swal({
                    title: title,
                    text: response.message,
                    timer: 2000,
                    showConfirmButton: true
                });
            });
        }
    });
}
