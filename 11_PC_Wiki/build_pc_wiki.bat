@echo off
cd /d "%~dp0"
echo Building Fragments of the Fallen Player Wiki...
echo.
set "BASEPY=C:\Users\Ugmul\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%BASEPY%" set "BASEPY=python"
set "WIKI_ROOT=%LOCALAPPDATA%\Fragments_of_the_Fallen_PC_Wiki"
set "WIKI_ENV=%WIKI_ROOT%\.venv"
set "WIKI_SITE=%WIKI_ROOT%\site"
if not exist "%WIKI_ENV%\Scripts\python.exe" (
  echo Creating shared wiki Python environment outside the campaign folder...
  "%BASEPY%" -m venv "%WIKI_ENV%"
)
"%WIKI_ENV%\Scripts\python.exe" -m pip install -r requirements.txt
"%WIKI_ENV%\Scripts\python.exe" -m mkdocs build --site-dir "%WIKI_SITE%"
echo.
echo Built site saved to:
echo %WIKI_SITE%
pause
