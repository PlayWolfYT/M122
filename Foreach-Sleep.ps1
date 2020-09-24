param ( 
    [parameter(Mandatory=$true) ] [int] $zahl,
    [parameter(Mandatory=$true) ] [int] $verz
    
)    
    
1..$zahl | foreach-object{ 
                $_
                Start-Sleep -Milliseconds $verz 
}