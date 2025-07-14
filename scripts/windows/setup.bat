@echo off
echo Setting up EcoBin for Windows...
echo.

echo Installing npm dependencies...
call npm install

echo.
echo Installing cross-env globally for Windows compatibility...
call npm install -g cross-env

echo.
echo Creating data directory...
if not exist "data" mkdir data

echo.
echo Verifying installation...
echo Node.js version:
node --version
echo.
echo npm version:
npm --version

echo.
echo Setup complete! 
echo.
echo To start development server, run:
echo   scripts\windows\dev.bat
echo.
echo To build for production, run:
echo   scripts\windows\build.bat
echo.
pause