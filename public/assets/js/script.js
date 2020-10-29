function swalError() {
    Swal.fire({
        title: 'Error!',
        text: 'Have an error! Please contact developers!',
        icon: 'error'
    });
}

function swalMessageFailed(message) {
    Swal.fire({
        title: 'Gagal!',
        text: message,
        icon: 'warning'
    });
}

function swalMessageSuccess(message) {
    Swal.fire({
        title: 'Sukses!',
        text: message,
        icon: 'success'
    });
}