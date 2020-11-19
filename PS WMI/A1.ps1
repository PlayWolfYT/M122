function getDiscSpace {
    
    $discSpaces = @{};

    $result = Get-WmiObject -Query "SELECT DeviceID,FreeSpace FROM Win32_LogicalDisk"
    foreach ($row in $result) {
        $discSpaces[$row['DeviceID']] = $row['FreeSpace'] / 1024 / 1024 / 1024
        #$discSpaces += @{ Name = $row['DeviceID']; FreeSpace = $row['FreeSpace'] };
    }

    return $discSpaces;
}

getDiscSpace