# Local Setup Guide for EcoBin

## Quick Start for Windows

### 1. Prerequisites
- **Node.js** (v18+): Download from [nodejs.org](https://nodejs.org/)
- **PostgreSQL**: Download from [postgresql.org](https://www.postgresql.org/download/windows/)
- **Git**: Download from [git-scm.com](https://git-scm.com/)

### 2. Database Setup
1. Install PostgreSQL and remember the password for `postgres` user
2. Open PostgreSQL command line (psql) or pgAdmin
3. Create database:
   ```sql
   CREATE DATABASE ecobin;
   ```

### 3. Project Setup
1. **Run the Windows setup script:**
   ```cmd
   setup-windows.bat
   ```
   
2. **Or manually:**
   ```cmd
   npm install
   copy .env.example .env
   ```

3. **Edit .env file** with your settings:
   ```
   DATABASE_URL=postgresql://postgres:YOUR_PASSWORD@localhost:5432/ecobin
   GEMINI_API_KEY=your_gemini_api_key
   SESSION_SECRET=your_random_secret_key
   PORT=5000
   ```

4. **Initialize database:**
   ```cmd
   npm run db:push
   ```

5. **Start the application:**
   ```cmd
   npm run dev
   ```

## Data Migration from Replit

### Export Current Data (Run this on Replit first)
```bash
node scripts/export-data.js
```
This creates a `data-export` folder with all your current data.

### Import Data to Local Database
1. Copy the `data-export` folder to your local project
2. Run:
   ```cmd
   node scripts/import-data.js
   ```

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production  
- `npm run start` - Start production server
- `npm run db:push` - Update database schema
- `npm run export-data` - Export current data to JSON files
- `npm run import-data` - Import data from JSON files
- `npm run migrate-data` - Migrate between databases

## Troubleshooting

### Common Windows Issues

1. **"tsx not found"**
   - Run: `npm install -g tsx` or use `npx tsx` instead

2. **Database connection error**
   - Check PostgreSQL service is running (Services.msc)
   - Verify DATABASE_URL in .env file
   - Test connection: `psql -U postgres -d ecobin`

3. **Permission errors**
   - Run Command Prompt as Administrator
   - Or use PowerShell instead of Command Prompt

4. **Port already in use**
   - Change PORT in .env to 3000 or another available port

### Database Issues

1. **"relation does not exist"**
   - Run: `npm run db:push`
   - Check database name in DATABASE_URL

2. **Connection timeout**
   - Increase `connectionTimeoutMillis` in server/db.ts
   - Check PostgreSQL is accepting connections

## Production Deployment

1. **Build the application:**
   ```cmd
   npm run build
   ```

2. **Set production environment variables**

3. **Start production server:**
   ```cmd
   npm run start
   ```

## Security Notes

- Never commit `.env` file to version control
- Use strong SESSION_SECRET in production
- Configure PostgreSQL security settings for production
- Use SSL connections for production databases

## Getting API Keys

### Google Gemini API Key
1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Create new API key
3. Copy to .env file

### Generate Session Secret
```cmd
node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
```

## Directory Structure
```
ecobin/
├── client/          # React frontend
├── server/          # Express backend
├── shared/          # Shared types and schemas
├── scripts/         # Database migration scripts
├── data-export/     # Exported data files
├── .env             # Environment variables
├── package.json     # Dependencies and scripts
└── README.md        # General documentation
```