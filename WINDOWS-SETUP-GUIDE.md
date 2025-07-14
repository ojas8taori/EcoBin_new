# EcoBin Windows Setup Guide

## Quick Start for Windows Users

### Method 1: Automated Setup (Recommended)

1. **Download and Extract**
   - Extract the EcoBin project to any folder (e.g., `C:\EcoBin`)

2. **Run Installation Script**
   - Right-click on `install-windows.bat` and select "Run as administrator"
   - Or navigate to the project folder in Command Prompt as Administrator
   - Run: `install-windows.bat`

3. **Start the Application**
   - Run: `dev-windows.bat`
   - Open browser to: `http://localhost:5000`

### Method 2: Manual Setup

1. **Install Node.js**
   ```cmd
   # Download from https://nodejs.org/
   # Install LTS version
   node --version
   npm --version
   ```

2. **Install MySQL (Optional but Recommended)**
   ```cmd
   # Download from https://dev.mysql.com/downloads/installer/
   # Install MySQL Server + Workbench
   mysql --version
   ```

3. **Install Dependencies**
   ```cmd
   npm install
   ```

4. **Setup Database**
   ```cmd
   # If MySQL is installed:
   mysql -u root -p
   CREATE DATABASE ecobin;
   CREATE USER 'ecobin'@'localhost' IDENTIFIED BY 'ecobin123';
   GRANT ALL PRIVILEGES ON ecobin.* TO 'ecobin'@'localhost';
   FLUSH PRIVILEGES;
   ```

5. **Start Development Server**
   ```cmd
   set NODE_ENV=development
   npx tsx server/index.ts
   ```

## Database Options

### Option 1: MySQL (Recommended)
- **Pros**: Full database features, better performance
- **Cons**: Requires MySQL installation
- **Data Location**: MySQL database on your local system

### Option 2: SQLite (Automatic Fallback)
- **Pros**: No additional software required
- **Cons**: Limited features compared to MySQL
- **Data Location**: `./data/local.db` file

## Environment Variables

The application automatically detects your system and uses appropriate defaults:

- **Database**: Tries MySQL first, falls back to SQLite
- **Port**: 5000 (configurable in `server/index.ts`)
- **Host**: localhost (Windows compatible)

## Batch Files Provided

### `setup-windows.bat`
- Checks prerequisites
- Installs dependencies
- Sets up database
- Creates necessary directories

### `dev-windows.bat`
- Sets Windows environment variables
- Starts development server
- Enables hot reload

### `start-windows.bat`
- Sets production environment
- Builds application
- Starts production server

## Windows-Specific Features

1. **Environment Variables**: Uses Windows `set` command
2. **Path Handling**: Compatible with Windows file paths
3. **Service Detection**: Automatically detects MySQL installation
4. **Fallback System**: SQLite fallback for systems without MySQL

## Data Storage Locations

### MySQL Mode
```
Database: ecobin
Host: localhost
User: ecobin
Password: ecobin123
```

### SQLite Mode
```
File: .\data\local.db
Location: Same directory as application
```

## Security

- All data stays on your local Windows system
- No external connections required
- MySQL uses local-only access
- SQLite file is stored locally

## Troubleshooting

### Common Commands
```cmd
# Check if services are running
tasklist /FI "IMAGENAME eq mysqld.exe"
netstat -an | findstr :5000

# Restart MySQL service
net stop mysql80
net start mysql80

# Clear npm cache
npm cache clean --force
rmdir /s node_modules
npm install
```

### Reset Everything
```cmd
# Stop application (Ctrl+C)
# Delete data
del data\local.db

# For MySQL
mysql -u root -p -e "DROP DATABASE ecobin; CREATE DATABASE ecobin;"

# Restart application
dev-windows.bat
```

This setup ensures EcoBin runs completely on your Windows system with all data stored locally.