@echo off
chcp 65001

REM Якість (0-100)
set QUALITY=75

REM Назва папки для результату
set OUTPUT=webp

REM Створити папку, якщо її нема
if not exist "%OUTPUT%" (
    mkdir "%OUTPUT%"
)

REM Конвертація
for %%f in (*.jpg) do (
    echo Конвертація %%f ...
    cwebp -q %QUALITY% "%%f" -o "%OUTPUT%\%%~nf.webp"
)

echo Готово! Файли в папці "%OUTPUT%"
pause