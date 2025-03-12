<div class="container mt-5">
    <h1 class="mb-4 fi-sidebar-item-label">Chi tiết liên hệ: {{ $record->name }}</h1>
    <div class="mb-5">
        <h2 class="fi-sidebar-item-label">Thông tin liên hệ</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-striped w-100">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>SĐT</th>
                        <th>Địa chỉ</th>
                        <th>Ghi chú</th>
                        <th>Ngày tạo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>{{ $record->id }}</td>
                        <td>{{ $record->name }}</td>
                        <td>{{ $record->email }}</td>
                        <td>{{ $record->phone }}</td>
                        <td>{{ $record->address }}</td>
                        <td>{{ $record->note }}</td>
                        <td>{{ $record->created_at }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div>
        <h2>Danh sách sản phẩm đã đặt</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-striped w-100">
                <thead>
                    <tr>
                        <th>Sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Tổng giá tiền</th>
                        <th>Ngày tạo</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($record->orderItems as $item)
                        <tr>
                            <td>{{ $item->product->name }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>{{ number_format($item->product->original_price, 0, ',', '.') }} đ</td>
                            <td>{{ number_format($item->quantity * $item->product->original_price, 0, ',', '.') }} đ</td>
                            <td>{{ $item->created_at }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <style>
        .container {
            margin-top: 20px;
        }

        .table {
            margin-bottom: 20px;
            width: 100%; /* Đảm bảo bảng chiếm toàn bộ chiều rộng */
        }

        .table th {
            background-color: #007bff;
            color: white;
            text-align: center; /* Căn giữa tiêu đề */
        }

        .table td {
            vertical-align: middle;
            text-align: center; /* Căn giữa nội dung */
        }

        h1, h2 {
        }

        h1 {
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }

        h2 {
            margin-top: 20px;
        }

        .mb-4 {
            margin-bottom: 1.5rem !important;
        }

        .mt-5 {
            margin-top: 3rem !important;
        }

        .table {
            border-collapse: collapse;
        }

        .table th, .table td {
            border: 1px solid #dee2e6; /* Màu border mặc định của Bootstrap */
        }

        .table th {
            background-color: #007bff;
            color: white;
        }
    </style>
</div>