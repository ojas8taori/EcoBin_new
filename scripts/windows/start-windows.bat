@echo off
title EcoBin Development Server
color 0A
echo ====================================
echo    EcoBin Development Server
echo ====================================
echo.

echo [1/4] Checking Node.js installation...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js not found. Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)
echo     Node.js: OK

echo.
echo [2/4] Checking dependencies...
if not exist "node_modules" (
    echo     Installing dependencies...
    call npm install
    if %errorlevel% neq 0 (
        echo ERROR: Failed to install dependencies
        pause
        exit /b 1
    )
)
echo     Dependencies: OK

echo.
echo [3/4] Creating data directory...
if not exist "data" mkdir data
echo     Data directory: OK

echo.
echo [4/4] Starting development server...
echo     Server will start on: http://localhost:5000
echo     Press Ctrl+C to stop the server
echo.
echo ====================================
echo     Server Starting...
echo ====================================
echo.

call npx cross-env NODE_ENV=development npx tsx server/index.ts