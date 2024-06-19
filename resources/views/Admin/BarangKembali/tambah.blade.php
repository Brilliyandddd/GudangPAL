<!-- MODAL TAMBAH -->
<div class="modal fade" data-bs-backdrop="static" id="modaldemo8">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Tambah Barang Kembali</h6><button onclick="reset()" aria-label="Close"
                    class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="bkmkode" class="form-label">Kode Barang Kembali <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="bkmkode" readonly class="form-control" placeholder="">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tgldipinjam" class="form-label">Tanggal Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="tgldipinjam" class="form-control datepicker-date"
                                        placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tglkembali" class="form-label">Tanggal Kembali <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="tglkembali" class="form-control datepicker-date"
                                        placeholder="">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="customer" class="form-label">Pilih Customer <span
                                    class="text-danger">*</span></label>
                            <select name="customer" id="customer" class="form-control">
                                <option value="">-- Pilih Customer --</option>
                                @foreach ($customer as $c)
                                    <option value="{{ $c->customer_id }}">{{ $c->customer_nama }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="ruang" class="form-label">Pilih Ruang <span
                                    class="text-danger">*</span></label>
                            <select name="ruang" id="ruang" class="form-control">
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
                                <input type="hidden" id="status" value="false">
                                <div class="spinner-border spinner-border-sm d-none" id="loaderkd" role="status">
                                    <span class="visually-hidden">Loading...</span>
                                </div>
                            </label>
                            <div class="input-group">
                                <input type="text" class="form-control" autocomplete="off" name="kdbarang"
                                    placeholder="">
                                <button class="btn btn-primary-light" onclick="searchBarang()" type="button"><i
                                        class="fe fe-search"></i></button>
                                <button class="btn btn-success-light" onclick="modalBarang()" type="button"><i
                                        class="fe fe-box"></i></button>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Nama Barang</label>
                            <input type="text" class="form-control" id="nmbarang" readonly>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Satuan</label>
                                    <input type="text" class="form-control" id="satuan" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Jenis</label>
                                    <input type="text" class="form-control" id="jenis" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="jml_dipinjam" class="form-label">Jumlah Barang Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="jml_dipinjam" value="0" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="jml_kembali" class="form-label">Jumlah Barang Kembali <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="jml_kembali" value="0" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="jml_rusak" class="form-label">Jumlah Barang Rusak/ Hilang </label>
                                    <input type="text" name="jml_rusak" value="0" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="keterangan_barang" class="form-label">Keterangan Barang
                                    </label>
                                    <select name="keterangan_barang" id="keterangan_barang" class="form-control">
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
                                    <label for="keterangan_pengembalian" class="form-label">Keterangan Pengembalian
                                    </label>
                                    <select name="keterangan_pengembalian" id="keterangan_pengembalian"
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
                <button class="btn btn-primary d-none" id="btnLoader" type="button" disabled="">
                    <span class="spinner-border spinner-border-sm me-1" role="status" aria-hidden="true"></span>
                    Loading...
                </button>
                <a href="javascript:void(0)" onclick="checkForm()" id="btnSimpan" class="btn btn-primary">Simpan <i
                        class="fe fe-check"></i></a>
                <a href="javascript:void(0)" class="btn btn-light" onclick="reset()" data-bs-dismiss="modal">Batal
                    <i class="fe fe-x"></i></a>
            </div>
        </div>
    </div>
</div>


@section('formTambahJS')
    <script>
        $('input[name="kdbarang"]').keypress(function(event) {
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                getbarangbyid($('input[name="kdbarang"]').val());
            }
        });

        function modalBarang() {
            $('#modalBarang').modal('show');
            $('#modaldemo8').addClass('d-none');
            $('input[name="param"]').val('tambah');
            resetValid();
            table2.ajax.reload();
        }

        function searchBarang() {
            getbarangbyid($('input[name="kdbarang"]').val());
            resetValid();
        }

        function getbarangbyid(id) {
            $("#loaderkd").removeClass('d-none');
            $.ajax({
                type: 'GET',
                url: "{{ url('admin/barang/getbarang') }}/" + id,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(data) {
                    if (data.length > 0) {
                        $("#loaderkd").addClass('d-none');
                        $("#status").val("true");
                        $("#nmbarang").val(data[0].barang_nama);
                        $("#satuan").val(data[0].satuan_nama);
                        $("#jenis").val(data[0].jenisbarang_nama);
                    } else {
                        $("#loaderkd").addClass('d-none');
                        $("#status").val("false");
                        $("#nmbarang").val('');
                        $("#satuan").val('');
                        $("#jenis").val('');
                    }
                }
            });
        }

        function checkForm() {
            const tgldipinjam = $("input[name='tgldipinjam']").val();
            const tglkembali = $("input[name='tglkembali']").val();
            const status = $("#status").val();
            const customer = $("select[name='customer']").val();
            const ruang = $("select[name='ruang']").val();
            const jml_dipinjam = $("input[name='jml_dipinjam']").val();
            const jml_kembali = $("input[name='jml_kembali']").val();
            const jml_rusak = $("input[name='jml_rusak']").val();
            const keterangan_barang = $("select[name='keterangan_barang']").val();
            const keterangan_pengembalian = $("select[name='keterangan_pengembalian']").val();
            setLoading(true);
            resetValid();

            if (tgldipinjam == "") {
                validasi('Tanggal Dipinjam wajib di isi!', 'warning');
                $("input[name='tgldipinjam']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (tglkembali == "") {
                validasi('Tanggal Kembali wajib di isi!', 'warning');
                $("input[name='tglkembali']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (customer == "") {
                validasi('Customer wajib di pilih!', 'warning');
                $("select[name='customer']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (ruang == "") {
                validasi('Ruang wajib di pilih!', 'warning');
                $("select[name='ruang']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (status == "false") {
                validasi('Barang wajib di pilih!', 'warning');
                $("input[name='kdbarang']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (jml_dipinjam == "" || jml_dipinjam == "0") {
                validasi('Jumlah Dipinjam wajib di isi!', 'warning');
                $("input[name='jml_dipinjam']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (jml_kembali == "" || jml_kembali == "0") {
                validasi('Jumlah Kembali wajib di isi!', 'warning');
                $("input[name='jml_kembali']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else {
                submitForm();
            }

        }

        function submitForm() {
            const bkmkode = $("input[name='bkmkode']").val();
            const tgldipinjam = $("input[name='tgldipinjam']").val();
            const tglkembali = $("input[name='tglkembali']").val();
            const kdbarang = $("input[name='kdbarang']").val();
            const customer = $("select[name='customer']").val();
            const ruang = $("select[name='ruang']").val();
            const jml_dipinjam = $("input[name='jml_dipinjam']").val();
            const jml_kembali = $("input[name='jml_kembali']").val();
            const jml_rusak = $("input[name='jml_rusak']").val();
            const keterangan_barang = $("select[name='keterangan_barang']").val();
            const keterangan_pengembalian = $("select[name='keterangan_pengembalian']").val();

            $.ajax({
                type: 'POST',
                url: "{{ route('barang-kembali.store') }}",
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
                    $('#modaldemo8').modal('toggle');
                    swal({
                        title: "Berhasil ditambah!",
                        type: "success"
                    });
                    table.ajax.reload(null, false);
                    reset();

                }
            });
        }

        function resetValid() {
            $("input[name='tgldipinjam']").removeClass('is-invalid');
            $("input[name='tglkembali']").removeClass('is-invalid');
            $("input[name='kdbarang']").removeClass('is-invalid');
            $("select[name='customer']").removeClass('is-invalid');
            $("select[name='ruang']").removeClass('is-invalid');
            $("input[name='jml_dipinjam']").removeClass('is-invalid');
            $("input[name='jml_kembali']").removeClass('is-invalid');
            $("input[name='jml_rusak']").removeClass('is-invalid');
            $("select[name='keterangan_barang']").removeClass('is-invalid');
            $("select[name='keterangan_pengembalian']").removeClass('is-invalid');
        };

        function reset() {
            resetValid();
            $("input[name='bkmkode']").val('');
            $("input[name='tgldipinjam']").val('');
            $("input[name='tglkembali']").val('');
            $("input[name='kdbarang']").val('');
            $("select[name='customer']").val('');
            $("select[name='ruang']").val('');
            $("input[name='jml_dipinjam']").val('0');
            $("input[name='jml_kembali']").val('0');
            $("input[name='jml_rusak']").val('0');
            $("select[name='keterangan_barang']").val('');
            $("select[name='keterangan_pengembalian']").val('');
            $("#nmbarang").val('');
            $("#satuan").val('');
            $("#jenis").val('');
            $("#status").val('false');
            setLoading(false);
        }

        function setLoading(bool) {
            if (bool == true) {
                $('#btnLoader').removeClass('d-none');
                $('#btnSimpan').addClass('d-none');
            } else {
                $('#btnSimpan').removeClass('d-none');
                $('#btnLoader').addClass('d-none');
            }
        }
    </script>
@endsection
