@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/N)? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo ... deleting all PNGs ...
rm *.png

:END
endlocal

@pause

