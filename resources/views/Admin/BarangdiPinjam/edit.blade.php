<!-- MODAL EDIT -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Barang Dipinjam</h6><button aria-label="Close" onclick="resetU()"
                    class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <input type="hidden" name="idbmU">
                        <div class="form-group">
                            <label for="bdpkodeU" class="form-label">Kode Barang Dipinjam <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="bdpkodeU" readonly class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="tgldipinjamU" class="form-label">Tanggal Dipinjam <span
                                    class="text-danger">*</span></label>
                            <input type="text" name="tgldipinjamU" class="form-control datepicker-date"
                                placeholder="">
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
                        <div class="form-group">
                            <label for="penanggungjawabU" class="form-label">Pilih Penanggungjawab <span
                                    class="text-danger">*</span></label>
                            <select name="penanggungjawabU" id="penanggungjawabU" class="form-control">
                                <option value="">-- Pilih Penanggungjawab --</option>
                                @foreach ($penanggungjawab as $r)
                                    <option value="{{ $r->penanggungjawab_id }}">{{ $r->penanggungjawab_nama }}</option>
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
                                    <label for="jmlU" class="form-label">Jumlah Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="jmlU" class="form-control"
                                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                                        placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lamadipinjamU" class="form-label">Lama Dipinjam <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="lamadipinjamU" class="form-control datepicker-date"
                                        id="lamadipinjam">
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
            const status = $("#statusU").val();
            const kdbarang = $("input[name='kdbarangU").val();
            const customer = $("select[name='customerU']").val();
            const ruang = $("select[name='ruangU']").val();
            const penanggungjawab = $("select[name='penanggungjawabU']").val();
            const jml = $("input[name='jmlU']").val();
            const lamadipinjam = $("input[name='lamadipinjamU']").val();
            setLoadingU(true);
            resetValidU();

            if (tgldipinjam == "") {
                validasi('Tanggal Dipinjam wajib di isi!', 'warning');
                $("input[name='tgldipinjamU']").addClass('is-invalid');
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
            } else if (penanggungjawab == "") {
                validasi('Penanggungjawab wajib di pilih!', 'warning');
                $("select[name='penanggungjawabU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (status == "false" || kdbarang == '') {
                validasi('Barang wajib di pilih!', 'warning');
                $("input[name='kdbarangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (jml == "" || jml == "0") {
                validasi('Jumlah Dipinjam wajib di isi!', 'warning');
                $("input[name='jmlU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else if (lamadipinjam == "") {
                validasi('Lama Dipinjam wajib di isi!', 'warning');
                $("input[name='lamadipinjamU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else {
                submitFormU();
            }
        }

        function submitFormU() {
            const id = $("input[name='idbmU']").val();
            const bdpkode = $("input[name='bdpkodeU']").val();
            const tgldipinjam = $("input[name='tgldipinjamU']").val();
            const kdbarang = $("input[name='kdbarangU']").val();
            const customer = $("select[name='customerU']").val();
            const ruang = $("select[name='ruangU']").val();
            const penanggungjawab = $("select[name='penanggungjawabU']").val();
            const jml = $("input[name='jmlU']").val();
            const lamadipinjam = $("input[name='lamadipinjamU']").val();

            $.ajax({
                type: 'POST',
                url: "{{ url('admin/barang-dipinjam/proses_ubah') }}/" + id,
                enctype: 'multipart/form-data',
                data: {
                    bdpkode: bdpkode,
                    tgldipinjam: tgldipinjam,
                    barang: kdbarang,
                    customer: customer,
                    ruang: ruang,
                    penanggungjawab: penanggungjawab,
                    jml: jml,
                    lamadipinjam: lamadipinjam,
                },
                success: function(data) {
                    if (data.success) {
                        $('#modaldemo8').modal('toggle');
                        swal({
                            title: "Berhasil ditambah!",
                            type: "success"
                        });
                        table.ajax.reload(null, false);
                        reset();
                    }
                },
                error: function(xhr, status, error) {
                    var err = JSON.parse(xhr.responseText);
                    swal({
                        title: "Stok barang tidak mencukupi",
                        text: err.message,
                        type: "error"
                    });
                    setLoading(false);
                }
            });
        }

        function resetValidU() {
            $("input[name='tgldipinjamU']").removeClass('is-invalid');
            $("input[name='kdbarangU']").removeClass('is-invalid');
            $("select[name='customerU']").removeClass('is-invalid');
            $("select[name='ruangU']").removeClass('is-invalid');
            $("select[name='penanggungjawabU']").removeClass('is-invalid');
            $("input[name='jmlU']").removeClass('is-invalid');
            $("input[name='lamadipinjamU']").removeClass('is-invalid');
        };

        function resetU() {
            resetValidU();
            $("input[name='idbmU']").val('');
            $("input[name='bdpkodeU']").val('');
            $("input[name='tgldipinjamU']").val('');
            $("input[name='kdbarangU']").val('');
            $("select[name='customerU']").val('');
            $("select[name='ruangU']").val('');
            $("select[name='penanggungjawabU']").val('');
            $("input[name='jmlU']").val('0');
            $("input[name='lamadipinjamU']").val('');
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
