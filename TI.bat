@echo off
echo Starting TrustedInstaller service...
sc.exe start TrustedInstaller

echo Starting a command prompt as TrustedInstaller... Once the other windows opens you may close this one (The new cmd will automaticaly run "whoami /groups" so can see that it is running with TI privileges)
powershell -Command " $p = Get-NtProcess TrustedInstaller.exe; $proc = New-Win32Process 'cmd.exe /k whoami /groups' -CreationFlags NewConsole -ParentProcess $p "

pause
exit
