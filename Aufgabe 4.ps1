$processes = Get-Process | Select-Object Name, CPU



$green = @()
$red  = @()
$white = @()



foreach ($process in $processes) {
    
    $processTime = $process.CPU

    if($processTime -lt 300 ){
        $green += $process
    }
    if ($processTime -ge 300 -and $processTime -lt 1000) {
        $white += $process
    }
    if ($processTime -ge 1000) {
        $red += $process
    }
}

Write-Host -ForegroundColor Green $green.Count

Write-Host -ForegroundColor White $red.Count

Write-Host -ForegroundColor Red $white.Count
