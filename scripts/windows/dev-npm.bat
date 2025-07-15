@echo off
echo Starting EcoBin development server (Windows compatible)...
echo.

echo Checking if dependencies are installed...
if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
    if %errorlevel% neq 0 (
        echo ERROR: Failed to install dependencies
        pause
        exit /b 1
    )
)

echo.
echo NOTE: Bypassing npm script to avoid NODE_ENV issues on Windows
echo Starting server directly with cross-env...
call npx cross-env NODE_ENV=development npx tsx server/index.ts