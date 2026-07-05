@echo off
cd /d "%~dp0"
echo Starting Fragments of the Fallen Player Wiki...
echo.
set "BASEPY=C:\Users\Ugmul\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%BASEPY%" set "BASEPY=python"
set "WIKI_ENV=%LOCALAPPDATA%\Fragments_of_the_Fallen_PC_Wiki\.venv"
if not exist "%WIKI_ENV%\Scripts\python.exe" (
  echo Creating shared wiki Python environment outside the campaign folder...
  "%BASEPY%" -m venv "%WIKI_ENV%"
)
"%WIKI_ENV%\Scripts\python.exe" -m pip install -r requirements.txt
start "" "http://127.0.0.1:8001"
"%WIKI_ENV%\Scripts\python.exe" -m mkdocs serve --dev-addr 127.0.0.1:8001
pause
