<p align="center"><img src="https://massgrave.dev/img/logo_small.png" alt="DTrix-MAS Logo"></p>

<h1 align="center">DTrix-MAS</h1>

<p align="center">Công cụ kích hoạt bản quyền Windows và Microsoft Office mã nguồn mở hỗ trợ các phương thức HWID (Bản quyền số), Ohook, TSforge và Online KMS cùng các tính năng khắc phục sự cố nâng cao.</p>

<hr>

## 🚀 Hướng Dẫn Kích Hoạt Windows / Office / ESU

### Cách 1 - Chạy Trực Tiếp Bằng File Script (Khuyên dùng)

1. Tải về hoặc clone repository này về máy tính của bạn:
   - File chạy trực tiếp: [**MAS_AIO.cmd**](MAS/All-In-One-Version-KL/MAS_AIO.cmd)
2. Nhấp đúp (hoặc nhấp chuột phải chọn **Run as administrator**) file `MAS_AIO.cmd`.
3. Trong giao diện menu xuất hiện, bấm phím số tương ứng với tùy chọn màu **Xanh lá cây (Green)** để tiến hành kích hoạt.

---

### Cách 2 - Chạy Nhanh Qua PowerShell ❤️

1. Mở **Start Menu**, tìm kiếm `PowerShell` và mở lên.
2. Dán đoạn mã bên dưới vào và nhấn **Enter**:
   - Đối với **Windows 8.1, 10 và 11**:
     ```powershell
     irm https://get.activated.win | iex
     ```
   - Trường hợp lệnh trên bị chặn bởi nhà mạng (ISP/DNS), hãy thử lệnh hỗ trợ DoH:
     ```powershell
     iex (curl.exe -s --doh-url https://1.1.1.1/dns-query https://get.activated.win | Out-String)
     ```
3. Trong menu hiện ra, bấm phím số tương ứng với tùy chọn màu **Xanh lá cây (Green)**.

---

## 📋 Bảng So Sánh Các Phương Thức Kích Hoạt

| Phương Thức | Sản Phẩm Hỗ Trợ | Thời Hạn Kích Hoạt | Ghi Chú |
| :--- | :--- | :--- | :--- |
| **HWID** | Windows 10 - 11 | **Vĩnh viễn** | Gắn liền với bo mạch chủ (Motherboard) |
| **Ohook** | Microsoft Office | **Vĩnh viễn** | Không cần gia hạn, không bị quét bản quyền |
| **TSforge** | Windows / ESU / Office | **Vĩnh viễn** | Hỗ trợ Windows 10 EOL và các bản vá mở rộng |
| **Online KMS** | Windows / Office | **180 Ngày** | Tự động gia hạn định kỳ thông qua tác vụ nền |

---

## ⚠️ Lưu Ý Quan Trọng

> [!NOTE]
> - Đây là repository của dự án [**DTrix-MAS**](https://github.com/dat1799/DTrix-MAS).
> - Khi tải script thủ công từ Internet, hãy luôn kiểm tra nguồn gốc đáng tin cậy để tránh các rủi ro bảo mật mã độc.
> - Nếu gặp lỗi hoặc thắc mắc, bạn có thể tạo Issue tại [GitHub Issues](https://github.com/dat1799/DTrix-MAS/issues).

---

<div align="center">

**Phiên bản:** 3.14  
**Giấy phép:** [MIT License](LICENSE)

</div>
