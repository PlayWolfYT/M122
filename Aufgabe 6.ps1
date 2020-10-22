$csvFile = ".\Files\schueler.csv";

$data = Import-Csv -Delimiter ";" -Path $csvFile

foreach($student in $data) {

    $file = ".\Aufgabe 6\" + $student.Klasse + ".csv";

    $content = $student.Name + ";"
    $content += $student.Vorname + ";"
    $content += $student.Benutzername + ";"
    $content += $student.Benutzername
    
    $content >> $file;
}