$regex = "*.exe"
$path = "c:\Windows\"

cd $path
get-childitem "$regex" | foreach-object { Write-Host $_.Name, $_.Length, ([System.Diagnostics.FileVersionInfo]::GetVersionInfo($_).FileVersion) }