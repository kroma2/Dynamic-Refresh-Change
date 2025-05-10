# Dynamic Refresh Rate Scheduler

This repository contains a setup for automatically adjusting your display's refresh rate using `QRes.exe` and a PowerShell script, triggered via Windows Task Scheduler.

## 📁 File Setup

Place the following files in the root of your `C:\` drive:

- `QRes.exe`
- `SetRefreshRate.ps1`

> ⚠️ Do not rename or move the files unless you also update the task paths accordingly.

## ⚙️ Importing Tasks

1. Open **Task Scheduler** (`taskschd.msc`).
2. In the right-hand panel, choose **Import Task...**.
3. Import both provided `.xml` task files.
4. During import:
   - Set **"When running the task, use the following user account"** to **your current user account**.
   - Check **"Run with highest privileges"**, if it's not already checked.

## ✅ Final Checks

- Verify that the tasks are **enabled** and listed under the **Task Scheduler Library**.
- You can test each task by right-clicking and selecting **Run**.
- If the PowerShell script doesn't execute, make sure script execution is allowed:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
