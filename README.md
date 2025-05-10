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
     $targetRate = "R:120"  # Change to desired rate
     ```

## ⚠️ Notes

- Make sure PowerShell scripts are allowed to run on your system. You may need to set the execution policy:
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
