#Get Start and End Times

$startTime = Get-Date
$endTime = ($startTime).AddMinutes(15)

#Convert start and end times to Epoch time
$unixStartTime = [long](Get-Date -Date $startTime -UFormat %s)
$unixEndTime = [long](Get-Date -Date $endTime -UFormat %s)

#Convert Epoch time to required microseconds
$unixStartTime = $unixStartTime * 1000000
$unixEndTime = $unixEndTime * 1000000

#Get Interval
#1s = 1000000
$interval = 15000000
