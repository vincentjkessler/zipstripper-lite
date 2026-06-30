@echo off
setlocal
TITLE Zip Stripper Lite - GUI
set SCRIPT_DIR=%~dp0

echo.
echo ================================================================
echo   ZIP STRIPPER LITE - GUI
echo ================================================================
echo.
echo Opening the lightweight graphical interface.
echo Drop a folder onto this .cmd file to prefill the project path.
echo.

py -3 "%SCRIPT_DIR%zip_stripper_lite.py" --gui %*
if errorlevel 1 (
  echo.
  echo py launcher failed or Zip Stripper returned an error. Trying python directly...
  python "%SCRIPT_DIR%zip_stripper_lite.py" --gui %*
)
if errorlevel 1 (
  echo.
  echo ZIP STRIPPER LITE GUI FAILED. Read the error above.
  exit /b 1
)
endlocal
