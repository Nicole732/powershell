#Script to verify a downloaded file checksum
#A debian image used to set-up a VM with VirtualBox
#https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/ 
#if error about execution policy, run
#Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

#Set path to the file 
$filePath = "C:\Users\Ketch\Downloads\debian-12.10.0-amd64-netinst.iso"

#Known good SHA256 hash
$knownHash = "ee8d8579128977d7dc39d48f43aec5ab06b7f09e1f40a9d98f2a9d149221704a"

 #Get the file's SHA256 hash
 $fileHash = Get-FileHash -Path $filePath -Algorithm SHA256
 $computedHash = $fileHash.Hash
 #$computedHash

 #print the computed hasj
 Write-Host "Computed Hash: $computedHash"

 #commpare the two hash value
 if ($computedHash.ToUpper() -eq  $knownHash.ToUpper()){
    Write-Host "✅ Hash matches. File is vallid." -ForegroundColor Green
} else {
    Write-Host "X Hash mismatch. File  may be corrupted or tampered." -ForegroundColor Red
}
