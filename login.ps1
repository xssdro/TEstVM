net config server /srvcomment:"Windows Server 2019 By ExDeus Arch" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user ${{ github.events.inputs.username }} ${{ github.events.inputs.password }}/add >nul
net localgroup administrators administrator /add >nul
net user ${{ github.events.inputs.username }} /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant ${{ github.events.inputs.username }}:F >nul
ICACLS C:\Windows\installer /grant ${{ github.events.inputs.username }}:F >nul
echo =============================
echo Task Completed, if your RDP offline or dead you can try re-build it again.
