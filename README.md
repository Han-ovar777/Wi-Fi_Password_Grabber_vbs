# Wi-Fi_Password_Grabber_vbs_C2

## :warning: This script is provided for responsible educational use. I do not condone or support its use in unethical or illegal activities. :warning:

This script is a wifi password Grabber that fetched the wifi-profiles of every wifi passwords stored on a Windows 10/11 system and sends it to a [discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

This VBScript:

Creates a Shell object to run Windows commands.

Displays a fake pop-up to make the user think it's a harmless script.

Exports all saved Wi-Fi profiles with cleartext passwords using netsh.

Parses those .xml files with PowerShell to extract SSIDs and passwords.

Formats the credentials into a table.

Sends them to a Discord webhook.

Cleans up traces by deleting the .xml files.

# Files
### Powershell scripts
- `Wifi-Stealer-Discord.ps1` - The main script, commented for readability
- `Wifi-Stealer-Discord_minified.ps1` - The minified version of the script (no comments, one line)
### Duckyscript files
- `Wifi-Stealer-Discord.txt` - A duckyscript version of the script, commented for readability
- `Wifi-Stealer-Discord_(Any-keyboard-layout).txt` - A duckyscript version of the script for any keyboard layout, commented for readability (for Flipper Zero)
- `Wifi-Stealer-Discord_(One_line).txt` - A duckyscript version of the script using the minified version of the script (for Flipper Zero)

# Usage
Replace `https://discord.com/api/webhooks/<channel_id>/<webhook_id>` with your own [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).
### Powershell
```powershell
powershell -ExecutionPolicy Bypass -File Wifi-Stealer-Discord.ps1
```
### Flipper Zero
1. Copy the .txt files to the Flipper Zero in the `badusb` folder, directly to the microSD card or using the [Flipper Zero app](https://docs.flipperzero.one/mobile-app) *(Android/iOS)* or [qFlipper](https://docs.flipperzero.one/qflipper) *(Windows/Linux/MacOS)*
2. Plug the Flipper Zero to the target computer
3. Run the script from the Flipper Zero in the `Bad USB` menu

# Result
![image](https://user-images.githubusercontent.com/54336210/251186081-3aa3261c-d14d-4ae1-a1ef-136f005d8705.png)
