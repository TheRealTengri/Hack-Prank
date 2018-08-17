@echo off
title Nuclear Weapons Program
echo Let's nuke somewhere
set /p yn=Do you know the coordinates (Y/N)?
set /a num=%random% %%10 +1
:A
echo %yn%
if %yn%==N (
goto N
)
if %yn%==n (
goto N
)
if %yn%==Y (
goto Y
)
if %yn%==y (
goto Y
) else goto A
:N
echo Okay. Press enter to open a world map to find the coordinates.
pause >nul
start chrome https://www.google.com/maps
timeout /t 3 /nobreak >nul
goto Y
:Y
set /p coo=Please enter the coordinates of where you would like to nuke:
echo %coo%
echo Launching nuke to %coo%...
timeout /t %num% /nobreak >nul
echo Nuke successfully landed. You killed %random% people.
echo Press any key to exit
pause >nul
exit
