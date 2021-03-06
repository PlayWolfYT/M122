function getTotalRamCapacity {
    $result = Get-WmiObject -Query "SELECT Capacity FROM Win32_PhysicalMemory";

    $totalMem = 0;

    foreach ($row in $result) {
        $totalMem += $row['Capacity'];
    }

    $totalMem /= 1024
    $totalMem /= 1024
    $totalMem /= 1024

    return $totalMem
}

getTotalRamCapacity