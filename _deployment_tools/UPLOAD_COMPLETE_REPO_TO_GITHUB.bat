@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0\.."

title Nautilus Intelligence - Complete GitHub Repository Upload

echo ============================================================
echo  NAUTILUS INTELLIGENCE - COMPLETE REPOSITORY UPLOAD
echo ============================================================
echo.
echo Repository:
echo   https://github.com/bunwin88/NautilusIntelligence-Website
echo.
echo This will replace the remote main branch with this complete
echo repository, including the .github workflow folder.
echo.

if not exist "index.html" goto :missing
if not exist "CNAME" goto :missing
if not exist ".github\workflows\deploy-pages.yml" goto :missing
if not exist "assets\styles.css" goto :missing

set /p CONFIRM=Type DEPLOY to continue: 
if /I not "%CONFIRM%"=="DEPLOY" (
  echo.
  echo Cancelled. Nothing was changed.
  pause
  exit /b 1
)

where git >nul 2>&1
if errorlevel 1 (
  echo.
  echo ERROR: Git for Windows is not installed or is not available in PATH.
  echo Install Git for Windows, then run this file again.
  echo https://git-scm.com/download/win
  pause
  exit /b 1
)

if exist ".git" (
  echo.
  echo Removing old local Git metadata...
  rmdir /s /q ".git"
)

echo.
echo Creating a clean main branch...
git init
if errorlevel 1 goto :failed
git checkout -B main
if errorlevel 1 goto :failed

git config user.name "Nautilus Intelligence"
git config user.email "admin@nautilusintelligence.ai"

echo Adding every repository file, including .github...
git add -A
if errorlevel 1 goto :failed

git commit -m "Deploy complete Nautilus Intelligence diligence website"
if errorlevel 1 goto :failed

git remote add origin https://github.com/bunwin88/NautilusIntelligence-Website.git
if errorlevel 1 goto :failed

echo.
echo Pushing the complete replacement repository...
echo Git may open a browser window for your GitHub sign-in.
git push --force --set-upstream origin main
if errorlevel 1 goto :failed

echo.
echo ============================================================
echo  UPLOAD COMPLETE
echo ============================================================
echo The complete repository, including .github/workflows, is now
 echo on GitHub. Open the Actions tab and confirm the Pages workflow
 echo completes with a green checkmark.
echo.
pause
exit /b 0

:missing
echo.
echo ERROR: This script is not being run from the complete extracted
 echo package, or required repository files are missing.
echo Required: index.html, CNAME, assets, and .github\workflows.
echo.
pause
exit /b 1

:failed
echo.
echo ERROR: The Git upload did not complete.
echo Review the message above. The most common cause is that GitHub
 echo authentication has not been completed or the repository has a
 echo branch protection rule that blocks force pushes.
echo.
pause
exit /b 1
