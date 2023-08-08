#@echo off
#setlocal

#set PATH "%VC2019%;%PATH%"

call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
mkdir ..\build
cd ..\build
qmake ..\CI-CD-Public\CI-CD-App.pro -spec win32-msvc "CONFIG+=qtquickcompiler"
nmake