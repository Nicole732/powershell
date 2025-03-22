#get information from use
$firstName = Read-Host -Prompt "Please enter your  first name"
$lastName = Read-Host -Prompt "Please enter your last  name"

#get date
$today = Get-Date -format "MMddyyyy-HHmmss"
$longDate = Get-Date -Format "F"
Write-Host "Today is $today"

#write the info to a file
Set-Content -Value "First Name: $firstName
Last Name: $lastName
Date: $longDate" -Path "./$today-$firstName-$lastName.txt"