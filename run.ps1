& {
    $ProgressPreference = 'SilentlyContinue'
    try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 } catch {}

    $sourceUrl = 'https://raw.githubusercontent.com/dat1799/DTrix-MAS/main/MAS/All-In-One-Version-KL/MAS_AIO.cmd'
    $rand = [Guid]::NewGuid().Guid
    $isAdmin = [bool]([Security.Principal.WindowsIdentity]::GetCurrent().Groups -match 'S-1-5-32-544')
    $tempFile = if ($isAdmin) { "$env:SystemRoot\Temp\DTrix_$rand.cmd" } else { "$env:USERPROFILE\AppData\Local\Temp\DTrix_$rand.cmd" }

    Write-Host "`nĐang tải DTrix-MAS..." -ForegroundColor Cyan

    try {
        $wc = New-Object System.Net.WebClient
        $wc.Encoding = [System.Text.Encoding]::UTF8
        $response = $wc.DownloadString($sourceUrl)

        $response = $response -replace "`r?`n", "`r`n"
        if (-not $response.EndsWith("`r`n")) { $response += "`r`n" }

        [System.IO.File]::WriteAllText($tempFile, $response, [System.Text.Encoding]::ASCII)

        if (Test-Path $tempFile) {
            Write-Host "Khởi chạy DTrix-MAS với quyền Administrator...`n" -ForegroundColor Green
            Start-Process -FilePath "$env:SystemRoot\System32\cmd.exe" -ArgumentList "/c `"`"$tempFile`"`"" -Verb RunAs -Wait
            Remove-Item -Path $tempFile -Force -ErrorAction SilentlyContinue
        }
    }
    catch {
        Write-Host "`nLỗi khi tải hoặc thực thi: $($_.Exception.Message)" -ForegroundColor Red
    }
}
