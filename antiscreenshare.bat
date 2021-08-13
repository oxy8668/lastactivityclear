
@echo off

reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f

set pfad=%cd%

cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Recent
del * /S /Q

cd C:\Windows\Prefetch
del * /Q /F

cd C:\Users\%USERNAME%\AppData\Local\Temp\
del * /S /Q /F

cd C:\Users\%USERNAME%\Documents
md WordAutoSave

cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc
copy Discord.lnk %pfad%

move %0 C:\Users\%USERNAME%\Documents\WordAutoSave\Homework_05.03.2021.docx