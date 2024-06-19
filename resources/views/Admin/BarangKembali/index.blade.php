@extends('Master.Layouts.app', ['title' => $title])

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <h1 class="page-title">Barang Kembali</h1>
        <div>
            <ol class="breadcrumb">
                <li class="breadcrumb-item text-gray">Peminjaman</li>
                <li class="breadcrumb-item active" aria-current="page">Barang Kembali</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->


    <!-- ROW -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header justify-content-between">
                    <h3 class="card-title">Data</h3>
                    @if ($hakTambah > 0)
                        <div>
                            <a class="modal-effect btn btn-primary-light" onclick="generateID()"
                                data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#modaldemo8">Tambah Data
                                <i class="fe fe-plus"></i></a>
                        </div>
                    @endif
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="table-1"
                            class="table table-bordered text-nowrap border-bottom dataTable no-footer dtr-inline collapsed">
                            <thead>
                                <th class="border-bottom-0" width="1%">No</th>
                                <th class="border-bottom-0">Tanggal Dipinjam</th>
                                <th class="border-bottom-0">Tanggal Kembali</th>
                                <th class="border-bottom-0">Kode Barang Kembali</th>
                                <th class="border-bottom-0">Kode Barang</th>
                                <th class="border-bottom-0">Peminjam</th>
                                <th class="border-bottom-0">Nomor Telepon</th>
                                <th class="border-bottom-0">Ruang</th>
                                <th class="border-bottom-0">Barang</th>
                                <th class="border-bottom-0">Jumlah Barang Dipinjam</th>
                                <th class="border-bottom-0">Jumlah Barang Kembali</th>
                                <th class="border-bottom-0">Jumlah Barang Rusak/ Hilang</th>
                                <th class="border-bottom-0">Keterangan Barang</th>
                                <th class="border-bottom-0">Keterangan Peminjaman</th>
                                <th class="border-bottom-0" width="1%">Action</th>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END ROW -->

    @include('Admin.BarangKembali.tambah')
    @include('Admin.BarangKembali.edit')
    @include('Admin.BarangKembali.hapus')
    @include('Admin.BarangKembali.barang')

    <script>
        function generateID() {
            id = new Date().getTime();
            $("input[name='bkmkode']").val("BKM-" + id);
        }

        function update(data) {
            $("input[name='idbkmU']").val(data.barangkembali_id);
            $("input[name='bkmkodeU']").val(data.barangkembali_kode);
            $("input[name='kdbarangU']").val(data.barang_kode);
            $("select[name='customerU']").val(data.customer_id);
            $("select[name='ruangU']").val(data.ruang_id);
            $("input[name='jml_dipinjamU']").val(data.barangdipinjam_jumlah);
            $("input[name='jml_kembaliU']").val(data.barangkembali_jumlah);
            $("input[name='jml_rusakU']").val(data.barangrusak_jumlah);
            $("input[name='keterangan_barangU']").val(data.barang_keterangan);
            $("input[name='keterangan_pengembalianU']").val(data.barangkembali_keterangan);

            getbarangbyidU(data.barang_kode);

            $("input[name='tgldipinjamU").bootstrapdatepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            }).bootstrapdatepicker("update", data.barangdipinjam_tanggal);

            $("input[name='tglkembaliU").bootstrapdatepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            }).bootstrapdatepicker("update", data.barangkembali_tanggal);
        }

        function hapus(data) {
            $("input[name='idbkm']").val(data.barangkembali_id);
            $("#vbkm").html("Kode BKM " + "<b>" + data.barangkembali_kode + "</b>");
        }

        function validasi(judul, status) {
            swal({
                title: judul,
                type: status,
                confirmButtonText: "Iya."
            });
        }
    </script>
@endsection

@section('scripts')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        var table;
        $(document).ready(function() {
            //datatables
            table = $('#table-1').DataTable({

                "processing": true,
                "serverSide": true,
                "info": true,
                "order": [],
                "scrollX": true,
                "stateSave": true,
                "lengthMenu": [
                    [5, 10, 25, 50, 100],
                    [5, 10, 25, 50, 100]
                ],
                "pageLength": 10,

                lengthChange: true,

                "ajax": {
                    "url": "{{ route('barang-kembali.getbarang-kembali') }}",
                },

                "columns": [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex',
                        searchable: false
                    },
                    {
                        data: 'tgl_dipinjam',
                        name: 'barangdipinjam_tanggal',
                    },
                    {
                        data: 'tgl',
                        name: 'barangkembali_tanggal',
                    },
                    {
                        data: 'barangkembali_kode',
                        name: 'barangkembali_kode',
                    },
                    {
                        data: 'barang_kode',
                        name: 'barang_kode',
                    },
                    {
                        data: 'customer',
                        name: 'customer_nama',
                    },
                    {
                        data: 'customer_notelp',
                        name: 'customer_notelp',
                    },
                    {
                        data: 'ruang',
                        name: 'ruang_nama',
                    },
                    {
                        data: 'barang',
                        name: 'barang_nama',
                    },
                    {
                        data: 'barangdipinjam_jumlah',
                        name: 'barangdipinjam_jumlah',
                    },
                    {
                        data: 'barangkembali_jumlah',
                        name: 'barangkembali_jumlah',
                    },
                    {
                        data: 'barangrusak_jumlah',
                        name: 'barangrusak_jumlah',
                    },
                    {
                        data: 'keterangan_barang',
                        name: 'keterangan_barang',
                    },
                    {
                        data: 'keterangan_pengembalian',
                        name: 'barangkembali_keterangan',
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: false,
                        searchable: false
                    },
                ],

            });
        });
    </script>
@endsection
