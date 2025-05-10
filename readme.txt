===============================
Dynamic Refresh Rate Scheduler
===============================

This guide explains how to set up a scheduled task that dynamically changes
your display's refresh rate using QRes.exe and a PowerShell script.

-------------------------------
Step 1: Place Required Files
-------------------------------

Copy the following files to the root of your C:\ drive:

- QRes.exe
- SetRefreshRate.ps1

NOTE:
Do not rename the files or move them to a different location unless you update
the task definitions to match the new paths.

-------------------------------
Step 2: Import Scheduled Tasks
-------------------------------

1. Open Task Scheduler (press Windows + R, then type: taskschd.msc)
2. In the right-hand panel, select "Import Task..."
3. Import both of the provided XML files
4. During import:
   - Make sure the "When running the task, use the following user account"
     field is set to YOUR user account
   - Check the "Run with highest privileges" box if it's not already checked

-------------------------------
Step 3: Final Setup Check
-------------------------------

- Ensure both tasks appear under the "Task Scheduler Library"
- Make sure the tasks are enabled
- You can test each task by right-clicking it and selecting "Run"

OPTIONAL:
If the PowerShell script doesn't run, make sure your execution policy allows it.
You can do this by running the following in PowerShell:

  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

-------------------------------
Done!
-------------------------------

The task scheduler is now set up to run your refresh rate script automatically.
