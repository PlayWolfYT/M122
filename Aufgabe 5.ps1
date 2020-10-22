param(
    [parameter(Mandatory=$true) ] [string] $search,
    [parameter(Mandatory=$true) ] [string] $replace
)

$files = Get-ChildItem ".\powershell_tmp" -Recurse -Filter "*.txt"

foreach($file in $files) {
    $path = $file.FullName

    $original = Get-Content -Path "$path"
    
    $replaced = $original.Replace($search, $replace);

    Set-Content -Path "$path" -Value "$replaced"
}