# Wi-Fi_Password_Grabber_vbs_C2

## :warning: This script is provided for responsible educational use. The author does not condone or support its use in unethical or illegal activities.

This script is a wifi stealer that sends every wifi passwords stored on a Windows 10/11 computer to a [discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

It is made to be used with a [Flipper Zero](https://flipperzero.one/) device, using the [BadUSB](https://docs.flipperzero.one/bad-usb) feature.

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
