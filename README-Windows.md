# EcoBin - Windows Installation Guide

## Prerequisites

### Required Software
1. **Node.js** (v18 or higher)
   - Download from: https://nodejs.org/
   - Choose "LTS" version for Windows
   - Make sure to check "Add to PATH" during installation

2. **MySQL** (for full functionality)
   - Download from: https://dev.mysql.com/downloads/installer/
   - Choose "MySQL Installer for Windows"
   - Select "Custom" installation
   - Install: MySQL Server, MySQL Workbench, MySQL Shell

### Optional Software
- **Git** (for version control)
- **Visual Studio Code** (recommended editor)

## Installation Steps

### Step 1: Download the Project
1. Extract the EcoBin project folder to your desired location
2. Open Command Prompt or PowerShell as Administrator
3. Navigate to the project folder:
   ```cmd
   cd C:\path\to\EcoBin
   ```

### Step 2: Run Windows Installation Script
1. **Right-click** on `install-windows.bat` and select **"Run as administrator"**
   
   Or from Command Prompt:
   ```cmd
   install-windows.bat
   ```
   
   This script will:
   - Check if Node.js and npm are installed
   - Install project dependencies
   - Check if MySQL is available
   - Create necessary directories
   - Set up the database (if MySQL is available)

### Step 3: MySQL Setup (Recommended)

If MySQL is installed, the setup script will create:
- Database: `ecobin`
- User: `ecobin` with password `ecobin123`

#### Manual MySQL Setup (if script fails):
1. Open MySQL Command Line Client or MySQL Workbench
2. Connect as root user
3. Execute these commands:
   ```sql
   CREATE DATABASE IF NOT EXISTS ecobin;
   CREATE USER IF NOT EXISTS 'ecobin'@'localhost' IDENTIFIED BY 'ecobin123';
   GRANT ALL PRIVILEGES ON ecobin.* TO 'ecobin'@'localhost';
   FLUSH PRIVILEGES;
   ```

### Step 4: Start the Application

#### Development Mode:
```cmd
dev-windows.bat
```

Or manually:
```cmd
set NODE_ENV=development
npx tsx server/index.ts
```

#### Production Mode:
```cmd
start-windows.bat
```

Or manually:
```cmd
set NODE_ENV=production
npm run build
node dist/index.js
```

## Data Storage

### MySQL (Recommended)
- All data is stored locally in your MySQL database
- Database name: `ecobin`
- Host: `localhost`
- User: `ecobin`
- Password: `ecobin123`

### SQLite (Fallback)
- If MySQL is not available, the app uses SQLite
- Database file: `./data/local.db`
- All data is stored in this file on your local system

## Accessing the Application

1. Open your web browser
2. Navigate to: `http://localhost:5000`
3. The application should load and be fully functional

## Common Issues and Solutions

### Issue: "NODE_ENV is not recognized"
**Solution**: Use the provided batch files (`dev-windows.bat` or `start-windows.bat`) instead of npm scripts

### Issue: MySQL Connection Failed
**Solutions**:
1. Ensure MySQL service is running:
   - Open Services (services.msc)
   - Find "MySQL80" service
   - Start if stopped
2. Check MySQL credentials in `server/db.ts`
3. The app will fallback to SQLite automatically

### Issue: Port 5000 already in use
**Solution**: 
1. Find and stop the process using port 5000
2. Or change the port in `server/index.ts`

### Issue: Dependencies installation fails
**Solution**:
1. Run `install-windows.bat` as Administrator
2. Clear npm cache: `npm cache clean --force`
3. Delete `node_modules` folder: `rmdir /s /q node_modules`
4. Run `npm install` again
5. Check internet connection and available disk space

## File Structure

```
EcoBin/
├── data/                    # Local database files
│   └── local.db            # SQLite database (if MySQL not available)
├── server/                  # Backend code
│   ├── db.ts               # Database configuration
│   └── index.ts            # Server entry point
├── client/                  # Frontend code
├── shared/                  # Shared types and schemas
├── install-windows.bat      # Windows installation script
├── setup-windows.bat        # Windows setup script (legacy)
├── dev-windows.bat          # Development server script
├── start-windows.bat        # Production server script
├── test-windows.bat         # Test script to verify installation
└── README-Windows.md        # This file
```

## Security Notes

- Default MySQL password is `ecobin123` - change this in production
- The application runs on `localhost` only by default
- All data is stored locally on your Windows system
- No external dependencies required for basic functionality

## Troubleshooting

### Check if services are running:
```cmd
# Check if Node.js is installed
node --version

# Check if MySQL is running
mysql --version

# Check if the application is running
netstat -an | findstr :5000
```

### Test installation:
```cmd
# Test if everything is working
test-windows.bat
```

### Reset database:
```cmd
# For MySQL
mysql -u root -p -e "DROP DATABASE ecobin; CREATE DATABASE ecobin;"

# For SQLite
del data\local.db
```

## Support

If you encounter any issues:
1. Check the console output for error messages
2. Verify all prerequisites are installed
3. Ensure MySQL service is running (if using MySQL)
4. Try restarting the application
5. Check Windows firewall settings if accessing from other devices

The application is designed to work completely offline and store all data locally on your Windows system.