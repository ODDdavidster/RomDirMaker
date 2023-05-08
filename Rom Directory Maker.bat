@echo off
set systemsAbr=NES SNES N64 GameCube WII WIIU SWITCH GB GBC GBA DS 3DS A2600 A5200 A7800 ALYNX Jaguar SMS SG SGG SG32x SGCD SNa Pico Saturn Dreamcast PSX PS2 PS3 
echo %systemsAbr%
set /p sure="This will make all of the above folders in the current directory. Are you sure you want to do this? [y/n] >_"
if %sure%==y (
	goto newDirCheck
) else (
	echo FAILED
	goto leave
)

:newDirCheck:
set /p more="Would you like to add more directories? [y/n] >_"
if %more%==n (
	goto makeROMDir
) else (
	goto amendList
)

:makeROMDir:
(for %%a in (%systemsAbr%) do (
   md %%a
   echo %%a
   echo/
))
goto leave

:leave:
pause
exit

:amendList:
(for %%a in (%systemsAbr%) do (
   md %%a
   echo %%a
   echo/
))
goto amendListLoop
:amendListLoop:
set /p userList="Put Dir here. [Abreviate directories and seperate with a space] >_"
(for %%a in (%userList%) do (
   md %%a
   echo %%a
   echo/
))
goto areYouDone

:areYouDone:
set /p doneUser="Would you like to add more? [y/n] >_"
if %doneUser%==y (
	goto amendListLoop
)
goto leave