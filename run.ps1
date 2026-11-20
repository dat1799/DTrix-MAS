<#
.SYNOPSIS
    DTrix-MAS Launcher
.DESCRIPTION
    Tự động tải và khởi chạy DTrix-MAS bằng Command Prompt với quyền Administrator.
#>

$ProgressPreference = 'SilentlyContinue'
try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 } catch {}

$rand = [Guid]::NewGuid().Guid
$tempFile = "$env:TEMP\DTrix_$rand.cmd"
$sourceUrl = "https://raw.githubusercontent.com/dat1799/DTrix-MAS/main/MAS/All-In-One-Version-KL/MAS_AIO.cmd"

Write-Host "`nĐang tải DTrix-MAS, vui lòng đợi..." -ForegroundColor Cyan

try {
    Invoke-RestMethod -Uri $sourceUrl -OutFile $tempFile
    if (Test-Path $tempFile) {
        Write-Host "Khởi chạy DTrix-MAS với quyền Administrator...`n" -ForegroundColor Green
        Start-Process -FilePath "$env:SystemRoot\System32\cmd.exe" -ArgumentList "/c `"$tempFile`"" -Verb RunAs -Wait
        Remove-Item -Path $tempFile -Force -ErrorAction SilentlyContinue
    }
}
catch {
    Write-Host "`nLỗi khi tải hoặc thực thi: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Vui lòng kiểm tra lại kết nối mạng hoặc thử chạy trực tiếp file MAS_AIO.cmd.`n" -ForegroundColor Yellow
}
