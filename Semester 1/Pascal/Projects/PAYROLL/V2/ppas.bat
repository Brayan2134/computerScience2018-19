@echo off
SET THEFILE=\\athena.root\students\667001\cs1\payroll\v2\header.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o \\athena.root\students\667001\cs1\payroll\v2\header.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
