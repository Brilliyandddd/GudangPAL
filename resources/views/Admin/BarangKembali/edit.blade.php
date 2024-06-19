<!-- MODAL EDIT -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Barang Kembali</h6><button aria-label="Close" onclick="resetU()"
                    class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <input type="hidden" name="idbkmU">
                        <div class="form-group">
                            <label for="bkmkodeU" class="form-label">Kode Barang Kembali <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="bkmkodeU" readonly class="form-control" placeholder="">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tgldipinjamU" class="form-label">Tanggal Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="tgldipinjamU" class="form-control datepicker-date"
                                        placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tglkembaliU" class="form-label">Tanggal Kembali <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="tglkembaliU" class="form-control datepicker-date"
                                        placeholder="">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="customerU" class="form-label">Pilih Customer <span
                                    class="text-danger">*</span></label>
                            <select name="customerU" id="customerU" class="form-control">
                                <option value="">-- Pilih Customer --</option>
                                @foreach ($customer as $c)
                                    <option value="{{ $c->customer_id }}">{{ $c->customer_nama }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="ruangU" class="form-label">Pilih Ruang <span
                                    class="text-danger">*</span></label>
                            <select name="ruangU" id="ruangU" class="form-control">
                                <option value="">-- Pilih Ruang --</option>
                                @foreach ($ruang as $r)
                                    <option value="{{ $r->ruang_id }}">{{ $r->ruang_nama }}</option>
                                @endforeach
                            </select>
                        </div>

                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Kode Barang <span class="text-danger me-1">*</span>
                                <input type="hidden" id="statusU" value="true">
                                <div class="spinner-border spinner-border-sm d-none" id="loaderkdU" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                            </label>
                            <div class="input-group">
                                <input type="text" class="form-control" autocomplete="off" name="kdbarangU"
                                    placeholder="">
                                <button class="btn btn-primary-light" onclick="searchBarangU()" type="button"><i
                                        class="fe fe-search"></i></button>
                                <button class="btn btn-success-light" onclick="modalBarangU()" type="button"><i
                                        class="fe fe-box"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nama Barang</label>
                            <input type="text" class="form-control" id="nmbarangU" readonly>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Satuan</label>
                                    <input type="text" class="form-control" id="satuanU" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Jenis</label>
                                    <input type="text" class="form-control" id="jenisU" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="jml_dipinjamU" class="form-label">Jumlah Barang Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="jml_dipinjamU" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="jml_kembaliU" class="form-label">Jumlah Barang Kembali <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="jml_kembaliU" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="jml_rusakU" class="form-label">Jumlah Barang Rusak/ Hilang </label>
                                    <input type="text" name="jml_rusakU" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="keterangan_barangU" class="form-label">Keterangan Barang
                                    </label>
                                    <select name="keterangan_barangU" id="keterangan_barangU" class="form-control">
                                        <option value="">-- Pilih Keterangan --</option>
                                        <option value="Aman">Aman</option>
                                        <option value="Sebagian Hilang">Sebagian Hilang</option>
                                        <option value="Sebagian Rusak">Sebagian Rusak</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="keterangan_pengembalianU" class="form-label">Keterangan Pengembalian
                                    </label>
                                    <select name="keterangan_pengembalianU" id="keterangan_pengembalian"
                                        class="form-control">
                                        <option value="">-- Pilih Keterangan --</option>
                                        <option value="Telat">Telat</option>
                                        <option value="Tidak telat">Tidak Telat</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-success d-none" id="btnLoaderU" type="button" disabled="">
                    <span class="spinner-border spinner-border-sm me-1" role="status" aria-hidden="true"></span>
                    Loading...
                </button>
                <a href="javascript:void(0)" onclick="checkFormU()" id="btnSimpanU" class="btn btn-success">Simpan
                    Perubahan <i class="fe fe-check"></i></a>
                <a href="javascript:void(0)" class="btn btn-light" onclick="resetU()" data-bs-dismiss="modal">Batal
                    <i class="fe fe-x"></i></a>
            </div>
        </div>
    </div>
</div>

@section('formEditJS')
    <script>
        $('input[name="kdbarangU"]').keypress(function(event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                getbarangbyidU($('input[name="kdbarangU"]').val());
            }
        });

        function modalBarangU() {
            $('#modalBarang').modal('show');
            $('#Umodaldemo8').addClass('d-none');
            $('input[name="param"]').val('ubah');
            resetValidU();
            table2.ajax.reload();
        }

        function searchBarangU() {
            getbarangbyidU($('input[name="kdbarangU"]').val());
            resetValidU();
        }

        function getbarangbyidU(id) {
            $("#loaderkdU").removeClass('d-none');
            $.ajax({
                type: 'GET',
                url: "{{ url('admin/barang/getbarang') }}/" + id,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(data) {
                    if (data.length > 0) {
                        $("#loaderkdU").addClass('d-none');
                        $("#statusU").val("true");
                        $("#nmbarangU").val(data[0].barang_nama);
                        $("#satuanU").val(data[0].satuan_nama);
                        $("#jenisU").val(data[0].jenisbarang_nama);
                    } else {
                        $("#loaderkdU").addClass('d-none');
                        $("#statusU").val("false");
                        $("#nmbarangU").val('');
                        $("#satuanU").val('');
                        $("#jenisU").val('');
                    }
                }
            });
        }

        function checkFormU() {
            const tgldipinjam = $("input[name='tgldipinjamU']").val();
            const tglkembali = $("input[name='tglkembaliU']").val();
            const status = $("#statusU").val();
            const kdbarang = $("input[name='kdbarangU").val();
            const customer = $("select[name='customerU']").val();
            const ruang = $("select[name='ruangU']").val();
            const jml_dipinjam = $("input[name='jml_dipinjamU']").val();
            const jml_kembali = $("input[name='jml_kembaliU']").val();
            const jml_rusak = $("input[name='jml_rusakU']").val();
            const keterangan_barang = $("select[name='keterangan_barangU']").val();
            const keterangan_pengembalian = $("select[name='keterangan_pengembalianU']").val();
            setLoadingU(true);
            resetValidU();

            if (tgldipinjam == "") {
                validasi('Tanggal Dipinjam wajib di isi!', 'warning');
                $("input[name='tgldipinjamU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else if (tglkembali == "") {
                validasi('Tanggal Kembali wajib di isi!', 'warning');
                $("input[name='tglkembaliU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else if (customer == "") {
                validasi('Customer wajib di pilih!', 'warning');
                $("select[name='customerU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (ruang == "") {
                validasi('Ruang wajib di pilih!', 'warning');
                $("select[name='ruangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (status == "false" || kdbarang == '') {
                validasi('Barang wajib di pilih!', 'warning');
                $("input[name='kdbarangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (jml_dipinjam == "" || jml_dipinjam == "0") {
                validasi('Jumlah Dipinjam wajib di isi!', 'warning');
                $("input[name='jml_dipinjamU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (jml_kembali == "" || jml_kembali == "0") {
                validasi('Jumlah Kembali wajib di isi!', 'warning');
                $("input[name='jml_kembaliU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else {
                submitFormU();
            }
        }

        function submitFormU() {
            const id = $("input[name='idbkmU']").val();
            const bkmkode = $("input[name='bkmkodeU']").val();
            const tgldipinjam = $("input[name='tgldipinjamU']").val();
            const tglkembali = $("input[name='tglkembaliU']").val();
            const kdbarang = $("input[name='kdbarangU']").val();
            const customer = $("select[name='customerU']").val();
            const ruang = $("select[name='ruangU']").val();
            const jml_dipinjam = $("input[name='jml_dipinjamU']").val();
            const jml_kembali = $("input[name='jml_kembaliU']").val();
            const jml_rusak = $("input[name='jml_rusakU']").val();
            const keterangan_barang = $("select[name='keterangan_barangU']").val();
            const keterangan_pengembalian = $("select[name='keterangan_pengembalianU']").val();

            $.ajax({
                type: 'POST',
                url: "{{ url('admin/barang-kembali/proses_ubah') }}/" + id,
                enctype: 'multipart/form-data',
                data: {
                    bkmkode: bkmkode,
                    tgldipinjam: tgldipinjam,
                    tglkembali: tglkembali,
                    barang: kdbarang,
                    customer: customer,
                    ruang: ruang,
                    jml_dipinjam: jml_dipinjam,
                    jml_kembali: jml_kembali,
                    jml_rusak: jml_rusak,
                    keterangan_barang: keterangan_barang,
                    keterangan_pengembalian: keterangan_pengembalian,
                },
                success: function(data) {
                    swal({
                        title: "Berhasil diubah!",
                        type: "success"
                    });
                    $('#Umodaldemo8').modal('toggle');
                    table.ajax.reload(null, false);
                    resetU();
                }
            });
        }

        function resetValidU() {
            $("input[name='tgldipinjamU']").removeClass('is-invalid');
            $("input[name='tglkembaliU']").removeClass('is-invalid');
            $("input[name='kdbarangU']").removeClass('is-invalid');
            $("select[name='customerU']").removeClass('is-invalid');
            $("select[name='ruangU']").removeClass('is-invalid');
            $("input[name='jml_dipinjamU']").removeClass('is-invalid');
            $("input[name='jml_kembaliU']").removeClass('is-invalid');
            $("input[name='jml_rusakU']").removeClass('is-invalid');
            $("select[name='keterangan_barangU']").removeClass('is-invalid');
            $("select[name='keterangan_pengembalianU']").removeClass('is-invalid');
        };

        function resetU() {
            resetValidU();
            $("input[name='idbkmU']").val('');
            $("input[name='bkmkodeU']").val('');
            $("input[name='tgldipinjamU']").val('');
            $("input[name='tglkembaliU']").val('');
            $("input[name='kdbarangU']").val('');
            $("select[name='customerU']").val('');
            $("select[name='ruangU']").val('');
            $("input[name='jml_dipinjamU']").val('0');
            $("input[name='jml_kembaliU']").val('0');
            $("input[name='jml_rusakU']").val('0');
            $("select[name='keterangan_barangU']").val('');
            $("select[name='keterangan_pengembalianU']").val('');
            $("#nmbarangU").val('');
            $("#satuanU").val('');
            $("#jenisU").val('');
            $("#statusU").val('false');

            setLoadingU(false);
        }

        function setLoadingU(bool) {
            if (bool == true) {
                $('#btnLoaderU').removeClass('d-none');
                $('#btnSimpanU').addClass('d-none');
            } else {
                $('#btnSimpanU').removeClass('d-none');
                $('#btnLoaderU').addClass('d-none');
            }
        }
    </script>
@endsection
