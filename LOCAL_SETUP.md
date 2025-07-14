# EcoBin Local Setup Guide

## Quick Start (Windows)

### 1. Install Prerequisites
- **Node.js** (v18+): https://nodejs.org/
- **MySQL** (optional): https://dev.mysql.com/downloads/installer/

### 2. Setup Project
```cmd
# Step 1: Right-click and "Run as administrator"
install-windows.bat

# Step 2: Test installation
test-windows.bat

# Step 3: Start development server
dev-windows.bat
```

### 3. Access Application
- Open browser to: `http://localhost:5000`

## Quick Start (Linux/Mac)

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Access at http://localhost:5000
```

## Database Options

### MySQL (Recommended)
- **Host**: localhost
- **Database**: ecobin
- **User**: ecobin
- **Password**: ecobin123
- **URL**: `mysql://ecobin:ecobin123@localhost:3306/ecobin`

### SQLite (Automatic Fallback)
- **File**: `./data/local.db`
- **No setup required**
- **Used when MySQL is not available**

## Windows Scripts

| Script | Purpose |
|--------|---------|
| `install-windows.bat` | Complete Windows setup |
| `dev-windows.bat` | Start development server |
| `start-windows.bat` | Start production server |
| `test-windows.bat` | Test installation |

## Troubleshooting

### "Cannot find package 'express'" Error
```cmd
# Solution 1: Run full installation
install-windows.bat

# Solution 2: Manual fix
rmdir /s /q node_modules
npm cache clean --force
npm install

# Solution 3: Check Node.js version
node --version
# Should be v18 or higher
```

### MySQL Connection Issues
```cmd
# Check MySQL service
net start mysql80

# Create database manually
mysql -u root -p
CREATE DATABASE ecobin;
CREATE USER 'ecobin'@'localhost' IDENTIFIED BY 'ecobin123';
GRANT ALL PRIVILEGES ON ecobin.* TO 'ecobin'@'localhost';
FLUSH PRIVILEGES;
```

### Port 5000 Already in Use
```cmd
# Find process using port 5000
netstat -ano | findstr :5000

# Kill process (replace PID with actual number)
taskkill /PID [PID] /F
```

## Features Available

- ✅ Smart waste pickup scheduling
- ✅ AI-powered waste scanner
- ✅ Community reporting
- ✅ Eco-points and rewards
- ✅ Educational content
- ✅ Analytics dashboard
- ✅ Multi-language support
- ✅ Dark/light theme

## Data Storage

All data is stored **locally** on your system:
- **MySQL**: Local database server
- **SQLite**: `./data/local.db` file
- **No external connections** required

## Security Notes

- Default MySQL password: `ecobin123`
- Change in production: Edit `server/db.ts`
- Application runs on `localhost` only
- All data remains on your local machine

## Support

For issues, check:
1. `test-windows.bat` output
2. Console logs in Command Prompt
3. `data/local.db` file exists
4. MySQL service is running (if using MySQL)

The application is designed to work completely offline with local data storage.