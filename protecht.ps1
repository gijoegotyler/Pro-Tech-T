# gets the location of the scripts
$location = Get-Location

# stops every service in the stopservices.txt file
foreach($line in [System.IO.File]::ReadLines("$location\stopservices.txt")) {
       Stop-Service -Name $line
}

# starts every service in the startservices.txt file
foreach($line in [System.IO.File]::ReadLines("$location\startservices.txt")) {
	Start-Service -Name $line
}

# Enables the firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

Start-Sleep -s 10
