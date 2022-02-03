#Author: Cameron Wright 1900973
#Module: SEC6201 Undergraduate Project
#Title: Trilateration using wireless access points for indoor positioning system

foreach($network_scan in 1..10){
Start-Sleep -s 1
$network_scan = python  '.\Test rssi.py'
$Datetime = Get-Date


Out-File -Append -FilePath 'C:\Users\camer\OneDrive - University of Bolton\YR3 HE6\SEC6201 Undergraduate Project\Network scan output\Network scan.txt' -InputObject $Datetime -Encoding ascii
Out-File -Append -FilePath 'C:\Users\camer\OneDrive - University of Bolton\YR3 HE6\SEC6201 Undergraduate Project\Network scan output\Network scan.txt' -InputObject $network_scan -Encoding ascii
}




