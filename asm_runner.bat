@echo off
start cmd /k "nasm -f win32 ionum.asm & nasm -f win32 iostr.asm & nasm -f win32 strings.asm & nasm -f win32 %1.asm & timeout 2 /nobreak & nlink %1.obj ionum.obj iostr.obj strings.obj -lmio -lio -o %1.exe & timeout 1 /nobreak & echo Here starts your program & %1.exe"
timeout	/t 4
if NOT [%2]==[] (
	start cmd /k "actest.exe %2 %1.exe"
)
