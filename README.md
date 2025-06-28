# Wi-Fi_Password_Grabber_vbs_C2

## :warning: This script is provided for responsible educational use. I do not condone or support its use in unethical or illegal activities. :warning:

This script is a wifi password Grabber that fetched the wifi-profiles of every wifi passwords stored on a Windows 10/11 system and sends it to a [discord webhook](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

## VBScript Features :

- Creates a Shell object to run Windows commands.
- Displays a fake pop-up to make the user think it's a harmless script.
- Exports all saved Wi-Fi profiles with cleartext passwords using netsh.
- Parses those .xml files with PowerShell to extract SSIDs and passwords.
- Formats the credentials into a table.
- Sends them to a Discord webhook.
- Cleans up traces by deleting the .xml files.

# Files
### Powershell scripts
- `Wi-fi_grabber.vbs` - The main script.
- `Wifi.docm` - The macros version.

# Usage
Replace `"ENTER YOUR DISCORD WEBHOOK URL">` with your own [webhook url](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks).

# Result
<img  src= ![wifigif](https://github.com/user-attachments/assets/1b47aa59-1f1b-412a-9603-7d5d70882593)
