
function getLocalUsers {
    $users = @();
    $result = Get-WmiObject -Query "SELECT * FROM Win32_UserAccount";

    foreach ($row in $result) {
        $users += $row['Name'];
    }

    return $users
}

getLocalUsers