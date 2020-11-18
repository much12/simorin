<div class="modal-dialog modal-md">
    <div class="modal-content">
        <div class="modal-header">
            <h4 class="modal-title">Lihat Jurnal</h4>
        </div>

        <div class="modal-body">
            <div class="row">
                <div class="col-md-6">
                    <label for="">Nis Siswa</label>
                    <p>{{$jurnal[0]->nis}}</p>
                </div>
                <div class="col-md-6">
                    <label for="">Nama Siswa</label>
                    <p>{{$jurnal[0]->nama}}</p>
                </div>
            </div><br>  
            <div class="row">
                <div class="col-md-4">
                    <label for="">Kegiatan Kerja</label>
                    <p>{{$jurnal[0]->kegiatan_kerja}}</p>
                </div>
                <div class="col-md-4">
                    <label for="">Prosedur Pengerjaan</label>
                    <p>{{$jurnal[0]->prosedur_pengerjaan}}</p>
                </div>
                <div class="col-md-4">
                    <label for="">Spesifikasi Bahan</label>
                    <p>{{$jurnal[0]->spesifikasi_bahan}}</p>
                </div>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
    </div>
</div>
