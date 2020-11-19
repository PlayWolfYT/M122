$csvFile = ".\Files\schueler.csv";

$data = Import-Csv -Delimiter ";" -Path $csvFile


$y_n = ""
while($y_n.toLower() -ne "y" -and $y_n.toLower() -ne "n") {
    $y_n = Read-Host "Do you want to empty the folder .\Aufgabe 6? (Y/n) "

}

if($y_n.ToLower() -eq "y") {
    Get-ChildItem -Path ".\Aufgabe 6" -Filter "*.csv" | Remove-Item 
}

foreach($student in $data) {

    $file = ".\Aufgabe 6\" + $student.Klasse + ".csv";

    $content = $student.Name + ";"
    $content += $student.Vorname + ";"
    $content += $student.Benutzername + ";"
    $content += $student.Benutzername
    
    $content >> $file;
}