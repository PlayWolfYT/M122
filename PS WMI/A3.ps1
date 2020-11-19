
function getFreeRamCapacity {
    $result = Get-WmiObject -Query "SELECT FreePhysicalMemory FROM Win32_OperatingSystem";
    return $result.FreePhysicalMemory / 1024 / 1024
}

getFreeRamCapacity