$path = ".\lernende.csv"
 
Import-Csv -Delimiter ";" $path | ForEach-Object { mkdir ($_.Vorname.Split(" ")[0] + "." + $_.Name.Split(" ")[0]).toLower().replace("ä", "ae").replace("ö", "oe").replace("ü", "ue") }