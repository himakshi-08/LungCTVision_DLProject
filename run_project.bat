@echo off
title LungScope AI - System Launcher
echo ===================================================
echo             Starting LungScope AI System
echo ===================================================
echo.

echo 1. Starting Backend API on http://localhost:5100 ...
start "LungScope Backend API" cmd /k "cd /d "%~dp0backend" && node server.js"

echo Waiting for backend initialization...
timeout /t 3 /nobreak >nul

echo 2. Starting Frontend Client on http://localhost:5174 ...
start "LungScope Frontend UI" cmd /k "cd /d "%~dp0frontend" && npx vite"

echo Waiting for frontend initialization...
timeout /t 3 /nobreak >nul

echo 3. Opening Application in your default browser...
start http://localhost:5174

echo.
echo ===================================================
echo  System is running!
echo  - Frontend: http://localhost:5174
echo  - Backend:  http://localhost:5100/api/health
echo ===================================================
pause
