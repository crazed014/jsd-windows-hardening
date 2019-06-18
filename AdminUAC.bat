if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

Powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\" -Name "ConsentPromptBehaviorAdmin" -Value 3"
