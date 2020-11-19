
function getShares {

    $shares = @{};

    $result = Get-WmiObject -Query "SELECT * FROM Win32_Share";
    
    foreach ($row in $result) {
        $shares.Add($row['Name'], $row['Path']);
    }

    return $shares;
}

getShares