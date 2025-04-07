@echo off
setlocal enabledelayedexpansion

set "src=C:\Users\jogetdx\Downloads\ext_doc"
set "dest=D:\Joget-DX8-Enterprise\wflow\app_formuploads\ds_tilaka_api_calls"

REM Loop through each file in source folder
for %%F in ("%src%\*_*.pdf") do (
    set "filename=%%~nF"
    set "extension=%%~xF"

    REM Split filename and get the second part after "_"
    for /f "tokens=2 delims=_" %%A in ("!filename!") do (
        set "uuid=%%A"
        set "destfolder=%dest%\!uuid!"

        if exist "!destfolder!" (
            copy "%%F" "!destfolder!\!uuid!!extension!"
            echo Copied and renamed: %%~nxF → !destfolder!\!uuid!!extension!
        ) else (
            echo Destination folder does not exist: !destfolder!
        )
    )
)

echo Done!
pause
