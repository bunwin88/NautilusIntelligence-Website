@echo off
setlocal EnableExtensions
cd /d "%~dp0\.."

echo ============================================================
echo  VERIFY NAUTILUS INTELLIGENCE REPOSITORY PACKAGE
echo ============================================================
echo.
set FAIL=0
call :check "index.html"
call :check "CNAME"
call :check ".nojekyll"
call :check ".github\workflows\deploy-pages.yml"
call :check "assets\styles.css"
call :check "assets\nautilus-mark.svg"
call :check "assets\nautilus-hero.png"
call :check "public\diligence-free-fit-review-intake-template.md"
echo.
if "%FAIL%"=="0" (
  echo PASS: The package contains the complete root structure,
  echo including .github\workflows\deploy-pages.yml.
) else (
  echo FAIL: One or more required files are missing.
)
echo.
echo CNAME value:
type CNAME
echo.
pause
exit /b %FAIL%

:check
if exist %1 (
  echo [OK]      %~1
) else (
  echo [MISSING] %~1
  set FAIL=1
)
exit /b 0
