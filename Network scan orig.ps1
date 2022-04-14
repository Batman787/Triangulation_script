#Author: Cameron Wright 1900973
#Module: SEC6201 Undergraduate Project
#Title: Trilateration using wireless access points for indoor positioning system
#ensure that both the "network scan.ps1" and "test rssi.py" are both in the same directory. To change the directory of the python change line 12 
#To point to the python script 

#Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

foreach($network_scan in 1..10){
#Change the "file_path" to the directory for the network scan output
$file_path = "C:\Users\camer\OneDrive - University of Bolton\YR3 HE6\SEC6201 Undergraduate Project\Network scan output\Dirty\Test 3\networkscan output 0m.txt"
Start-Sleep -s 1
$network_scan = python  '.\Test rssi.py'
$Datetime = Get-Date



Out-File -Append -FilePath $file_path -InputObject $Datetime -Encoding ascii
Out-File -append -FilePath $file_path -InputObject $network_scan -Encoding ascii

}




