@extends('master')
@section('title', 'Ganti Password')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="header">
                    <h2>Ganti Password</h2>
                </div>

                <div class="body">
                    <form id="frmChangePassword" action="{{ url()->current() . '/process' }}" method="POST" autocomplete="off">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password Baru</label>

                                    <div class="form-line">
                                        <input type="password" class="form-control" name="newpassword" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Konfirmasi Password</label>

                                    <div class="form-line">
                                        <input type="password" class="form-control" name="confirmpassword" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Password Lama</label>

                                    <div class="form-line">
                                        <input type="password" class="form-control" name="password" required>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Ganti Password</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $('#frmChangePassword').submit(function(e) {
        e.preventDefault();

        let formData = new FormData(this);
        let elementsForm = $(this).find('button, input');

        elementsForm.attr('disabled', true);

        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: formData,
            processData: false,
            contentType: false,
            success: function(response) {
                elementsForm.removeAttr('disabled');

                if (response.RESULT == 'OK') {
                    swalMessageSuccess(response.MESSAGE);

                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);
                } else {
                    swalMessageFailed(response.MESSAGE);
                }
            }
        }).fail(function() {
            elementsForm.removeAttr('disabled');
            swalError();
        });
    });
</script>
@endsection