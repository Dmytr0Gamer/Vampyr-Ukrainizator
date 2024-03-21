@:top
@if "%~1.pak" == ".pak" goto skip
@setlocal enableextensions
@pushd "%~dp0"
@echo "%~1\*.*" "..\..\..\*.*" >filelist.txt
.\UnrealPak.exe %1 -extract "Unpack\%~n1"
@shift /1
@goto top


:skip