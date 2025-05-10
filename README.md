# Dynamic Refresh Rate Switcher – Task Scheduler Setup

This setup allows you to dynamically switch your monitor's refresh rate using Windows Task Scheduler and PowerShell.

## 📁 Setup Instructions

1. **Place Files**
   - Copy both `QRes.exe` and `SetRefreshRate.ps1` into your `C:\` directory.

2. **Import Scheduled Tasks**
   - Open **Task Scheduler**.
   - Import both provided `.xml` task files.
   - Ensure the tasks are set to run under your user account.

3. **Customize Refresh Rates (Optional)**
   - Open `SetRefreshRate.ps1` in a text editor.
   - Modify the lines containing `R:144` and `R:60` to your desired refresh rates.
   - Example:
     ```powershell
     -ArgumentList "/R:x"  # Change x to desired rate
     ```
   - The first value (by default:144) is for when your monitor is plugged in, and the second one (by default:60) is for when it's unplugged.
## ⚠️ Notes
- The QRes.exe file comes from this site: https://www.majorgeeks.com/files/details/qres.html
  Download it directly from there if you wish
- Make sure PowerShell scripts are allowed to run on your system. You may need to set the execution policy:
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
