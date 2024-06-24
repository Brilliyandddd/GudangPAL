@extends('Master.Layouts.app', ['title' => $title])

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <h1 class="page-title">Barang Dipinjam</h1>
        <div>
            <ol class="breadcrumb">
                <li class="breadcrumb-item text-gray">Peminjaman</li>
                <li class="breadcrumb-item active" aria-current="page">Barang Dipinjam</li>
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
                                <th class="border-bottom-0">Kode Barang Dipinjam</th>
                                <th class="border-bottom-0">Kode Barang</th>
                                <th class="border-bottom-0">Peminjam</th>
                                <th class="border-bottom-0">Nomor Telepon</th>
                                <th class="border-bottom-0">Divisi</th>
                                <th class="border-bottom-0">Ruang</th>
                                <th class="border-bottom-0">Penanggungjawab</th>
                                <th class="border-bottom-0">Barang</th>
                                <th class="border-bottom-0">Jumlah Barang Dipinjam</th>
                                <th class="border-bottom-0">Lama Dipinjam</th>
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

    @include('Admin.BarangdiPinjam.tambah')
    @include('Admin.BarangdiPinjam.edit')
    @include('Admin.BarangdiPinjam.hapus')
    @include('Admin.BarangdiPinjam.barang')

    <script>
        function generateID() {
            id = new Date().getTime();
            $("input[name='bdpkode']").val("BDP-" + id);
        }

        function update(data) {
            $("input[name='idbmU']").val(data.barangdipinjam_id);
            $("input[name='bdpkodeU']").val(data.barangdipinjam_kode);
            $("input[name='kdbarangU']").val(data.barang_kode);
            $("select[name='customerU']").val(data.customer_id);
            $("select[name='ruangU']").val(data.ruang_id);
            $("select[name='penanggungjawabU']").val(data.penanggungjawab_id);
            $("input[name='jmlU']").val(data.barangdipinjam_jumlah);
            $("input[name='lamadipinjamU']").val(data.barangdipinjam_lama);

            getbarangbyidU(data.barang_kode);

            $("input[name='tgldipinjamU").bootstrapdatepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            }).bootstrapdatepicker("update", data.barangdipinjam_tanggal);
        }

        function hapus(data) {
            $("input[name='idbdp']").val(data.barangdipinjam_id);
            $("#vbdp").html("Kode BDP " + "<b>" + data.barangdipinjam_kode + "</b>");
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
                    "url": "{{ route('barang-dipinjam.getbarang-dipinjam') }}",
                },

                "columns": [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex',
                        searchable: false
                    },
                    {
                        data: 'tgl',
                        name: 'barangdipinjam_tanggal',
                    },
                    {
                        data: 'barangdipinjam_kode',
                        name: 'barangdipinjam_kode',
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
                        data: 'customer_alamat',
                        name: 'customer_alamat',
                    },
                    {
                        data: 'ruang',
                        name: 'ruang_nama',
                    },
                    {
                        data: 'penanggungjawab',
                        name: 'penanggungjawab_nama',
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
                        data: 'lama_dipinjam',
                        name: 'barangdipinjam_lama',
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
