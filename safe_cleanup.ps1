# Di chuyển đến thư mục logs của dự án
Set-Location -Path ".\logs"

# Lọc các dòng có chữ WARNING từ system.log ra tệp issues.txt
Get-Content -Path "system.log" | Select-String -Pattern "WARNING" > "issues.txt"

# Xóa các tệp .tmp (chỉ giới hạn bên trong thư mục hiện tại)
Remove-Item -Path ".\*.tmp" -Force

Write-Host "Hoan thanh xu ly file log an toan!" -ForegroundColor Green
