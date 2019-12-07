$location = Get-Location
foreach($line in [System.IO.File]::ReadLines("$location\stopservices.txt")) {
       Stop-Service -Name $line
}

foreach($line in [System.IO.File]::ReadLines("$location\startservices.txt")) {
	Start-Service -Name $line
}

Start-Sleep -s 10
