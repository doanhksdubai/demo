<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Giao Diện Đẹp</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">MyWebsite</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link active" href="#">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Giới thiệu</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero section -->
    <div class="bg-light py-5 text-center">
        <div class="container">
            <h1 class="display-4">Chào mừng bạn đến với website!</h1>
            <p class="lead">Đây là một giao diện đơn giản và hiện đại được xây dựng bằng Bootstrap 5.</p>
            <a href="#" class="btn btn-primary btn-lg">Bắt đầu</a>
        </div>
    </div>

    <!-- Content Cards -->
    <div class="container py-5">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Tiêu đề 1</h5>
                        <p class="card-text">Mô tả ngắn gọn cho thẻ nội dung này.</p>
                        <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Tiêu đề 2</h5>
                        <p class="card-text">Mô tả ngắn gọn cho thẻ nội dung này.</p>
                        <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-sm">
                    <img src="https://via.placeholder.com/400x200" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Tiêu đề 3</h5>
                        <p class="card-text">Mô tả ngắn gọn cho thẻ nội dung này.</p>
                        <a href="#" class="btn btn-outline-primary">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <div class="container">
            &copy; 2025 MyWebsite. All rights reserved.
        </div>
    </footer>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
