@echo off
echo Setting up EcoBin for Windows...

echo.
echo Step 1: Installing dependencies...
call npm install

echo.
echo Step 2: Setting up environment...
if not exist .env (
    echo Copying .env.example to .env...
    copy .env.example .env
    echo.
    echo IMPORTANT: Please edit .env file and add your database connection and API keys
    echo.
)

echo.
echo Step 3: Testing database connection...
call npm run db:push

echo.
echo Setup complete! To start the application:
echo   npm run dev
echo.
echo Don't forget to:
echo   1. Install PostgreSQL on your system
echo   2. Create a database called 'ecobin'
echo   3. Update the DATABASE_URL in .env file
echo   4. Add your GEMINI_API_KEY to .env file
echo   5. Add a SESSION_SECRET to .env file
echo.
pause