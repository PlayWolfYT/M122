$hashTable = @{}; 
$csv = Get-Content "C:/Users/Ruben Martins.DESKTOP-V9D7257/Desktop/Powershell/Files/ort.csv";
 
foreach ($row in $csv) { 
 
    $name = $row.Split(";")[1];

    if ($hashTable.ContainsKey($name)) {
        $hashTable[$name] += ";" + $row.Split(";")[0] + ":" + $row.Split(";")[2];
    }
    else {
        $hashTable[$row.Split(";")[1]] = $row.Split(";")[0] + ":" + $row.Split(";")[2];
    }

    
}

$uInput = "";

while ($uInput -ne "EXIT") {
    $uInput = Read-Host "Bitte geben Sie eine Ortschaft oder 'EXIT' ein: ";

    if ($uInput -ne "EXIT" -And $hashTable.ContainsKey($uInput)) {

        $data = $hashTable[$uInput];

        $dTable = @{};

        foreach ($dRow in $data.Split(";")) {
            $canton = $dRow.Split(":")[0];
            $plz = $dRow.Split(":")[1];

            if ($dTable.ContainsKey($canton)) {
                $dTable[$canton] += ", " + $plz;
            }
            else {
                $dTable[$canton] = $plz;
            }
        }

        $dTable | Format-Table;

    }

}

Write-Host "Auf wiedersehen."