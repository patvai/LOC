#$tail= Get-Content C:\Users\etpivaa\Desktop\log.txt -Tail 3
$tail = Get-Content \\EUSAAMW0920\e\AutoDev\Automation\Scripts\Prod\extractor\extractor.log -Tail 3

ForEach-Object{$s=$tail.Substring(0,19)
$a,$b = $s.split(' ')}
$cu_time = (Get-Date).AddMinutes(-5.00).ToString('yyyy-MM-dd hh:mm:ss') 
ForEach-Object{$cd,$ct = $cu_time.split(' ')}
ForEach-Object{$t=$s.split(' ')}
#Write-Host $s
$q1 = $t[1]
$q2 = $t[3]
$q3 = $t[5]
#Write-Host $q3, $ct
#$cu_time = (Get-Date).ToString('yyyy-MM-dd hh:mm:ss')

If ($a -eq $cd -and $q3 -ge $ct){'You logged in within 5 minutes today'}
Else {'You were not logged within 5 minutes today'}