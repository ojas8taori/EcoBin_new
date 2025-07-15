@echo off
echo Fixing package.json scripts for Windows compatibility...
echo.

echo Creating Windows-compatible package.json backup...
copy package.json package.json.backup

echo.
echo The package.json dev script needs to be updated to use cross-env.
echo Please update the "dev" script in package.json from:
echo   "dev": "NODE_ENV=development tsx server/index.ts"
echo To:
echo   "dev": "cross-env NODE_ENV=development tsx server/index.ts"
echo.
echo Or run this Windows batch file which bypasses the npm script entirely.
echo.

echo Starting server directly with cross-env...
call npx cross-env NODE_ENV=development npx tsx server/index.ts