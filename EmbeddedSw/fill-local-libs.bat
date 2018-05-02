@ECHO OFF

setlocal ENABLEDELAYEDEXPANSION
SET sdk=C:\Xilinx\SDK\2018.1\bin\xsdk.bat
cmd /c "%sdk% -batch -source fill-local-libs.tcl"
pause
