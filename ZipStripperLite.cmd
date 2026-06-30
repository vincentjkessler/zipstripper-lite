@echo off
setlocal
TITLE Zip Stripper Lite
set SCRIPT_DIR=%~dp0

echo.
echo ================================================================
echo   ZIP STRIPPER LITE - SMART COPY / STRIP / ZIP
echo ================================================================
echo.
echo Starting. The original project will not be modified.
echo Smart mode is on: source stays, dependency/cache junk goes,
echo one best evidence packet copy is kept, duplicate/raw data bloat is reduced.
echo.

py -3 "%SCRIPT_DIR%zip_stripper_lite.py" %*
if errorlevel 1 (
  echo.
  echo py launcher failed or Zip Stripper returned an error. Trying python directly...
  python "%SCRIPT_DIR%zip_stripper_lite.py" %*
)
if errorlevel 1 (
  echo.
  echo ZIP STRIPPER LITE FAILED. Read the error above.
)
