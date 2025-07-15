# Windows Development Scripts

This folder contains Windows-specific batch files for easy EcoBin development on Windows systems.

## Quick Start Files

### 🚀 `start-windows.bat` (RECOMMENDED)
**Primary development startup script**
- Checks for dependencies and installs if missing
- Sets NODE_ENV appropriately for Windows
- Starts the development server
- Most comprehensive and user-friendly option

### ⚡ `dev-npm.bat` 
**Simple npm-based startup**
- Uses standard `npm run dev` command
- Good for users comfortable with npm
- Quick and straightforward

### 🔧 `dev-windows.bat`
**Alternative development startup**
- Custom Windows environment handling
- Backup option if npm scripts fail

## Setup & Installation

### 📦 `setup-windows.bat`
**Complete first-time setup**
- Installs Node.js dependencies
- Configures Windows environment
- Sets up database if needed
- Run this once before using other scripts

### 🛠️ `install-windows.bat`
**Dependency installation**
- Handles npm install with Windows-specific fixes
- Resolves permission issues
- Comprehensive package installation

## Utility Scripts

### 🏗️ `build.bat`
**Production build**
- Builds application for production deployment
- Optimizes assets for distribution

### 🧪 `test.bat` / `test-windows.bat`
**Testing utilities**
- Runs test suite on Windows
- Windows-specific test configurations

### 🔧 `fix-windows-directory.bat`
**Troubleshooting utility**
- Fixes common Windows directory permission issues
- Resolves path-related problems
- Run if encountering file access errors

### 📦 `fix-package.bat`
**Package troubleshooting**
- Fixes npm package issues
- Cleans and reinstalls dependencies
- Resolves Windows-specific package conflicts

## Environment Setup

### 🌍 `setup-env-windows.bat`
**Environment configuration**
- Sets up Windows environment variables
- Configures NODE_ENV for development
- Handles Windows-specific settings

## Usage Instructions

1. **First time setup:**
   ```batch
   scripts\windows\setup-windows.bat
   ```

2. **Daily development:**
   ```batch
   scripts\windows\start-windows.bat
   ```

3. **If having issues:**
   ```batch
   scripts\windows\fix-windows-directory.bat
   scripts\windows\fix-package.bat
   ```

## Troubleshooting

- **Permission Errors**: Run Command Prompt as Administrator
- **Path Issues**: Use `fix-windows-directory.bat`
- **Package Problems**: Use `fix-package.bat`
- **Environment Issues**: Use `setup-env-windows.bat`

All scripts are designed to work from the project root directory.