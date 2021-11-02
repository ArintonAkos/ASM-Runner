@echo off
start cmd /k "nasm -f win32 %1.asm"
timeout /t 1
start cmd /k "nlink %1.obj -lio -limo -o %1.exe"
timeout /t 1
start cmd /k "%1.exe"
timeout /t 1
if NOT [%2]==[] (
	start cmd /k "actest.exe %2 %1.exe"
)
