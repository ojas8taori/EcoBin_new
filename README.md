# EcoBin - Smart Waste Management & Sustainability Portal

## Overview
EcoBin is a comprehensive full-stack web application designed to transform waste management through intelligent tools, community engagement, and sustainability education. Built with real environmental data and facts, EcoBin educates users about the global waste crisis while providing practical tools for sustainable living.

## Real Environmental Impact Data
- **2+ Billion tons** of waste generated globally each year (70% increase expected by 2050)
- **One-third** of all food production is wasted globally
- **Millions** of marine animals die annually from plastic pollution
- **Small percentage** of plastic waste is actually recycled
- **Landfills** contribute significant methane emissions
- **Textile waste** largely ends up in landfills
- **Soil health** is critical for carbon storage and biodiversity

## Prerequisites for Local Development

### Windows Setup
1. **Node.js** (v18 or higher)
   - Download from [nodejs.org](https://nodejs.org/)
   - Verify installation: `node --version` and `npm --version`

2. **PostgreSQL**
   - Download from [postgresql.org](https://www.postgresql.org/download/windows/)
   - During installation, remember the password you set for the `postgres` user
   - Default port: 5432

3. **Git** (optional but recommended)
   - Download from [git-scm.com](https://git-scm.com/)

### Environment Setup

1. **Clone/Download the project**
   ```bash
   git clone <your-repo-url>
   cd ecobin
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Database Setup**
   - Create a new PostgreSQL database:
   ```sql
   CREATE DATABASE ecobin;
   ```

4. **Environment Variables**
   Create a `.env` file in the root directory with:
   ```
   DATABASE_URL=postgresql://postgres:your_password@localhost:5432/ecobin
   GEMINI_API_KEY=your_gemini_api_key
   SESSION_SECRET=your_random_secret_key
   PORT=5000
   ```

5. **Database Migration**
   ```bash
   npm run db:push
   ```

6. **Start the Application**
   ```bash
   npm run dev
   ```

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run db:push` - Push database schema changes
- `npm run check` - TypeScript type checking

## Getting API Keys

### Gemini API Key
1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Create a new API key
3. Copy the key to your `.env` file

### Session Secret
Generate a random string for session security:
```bash
node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"
```

## Troubleshooting

### Windows-specific Issues
- If you get permission errors, run Command Prompt as Administrator
- For PostgreSQL connection issues, ensure the service is running in Services.msc
- Use PowerShell instead of Command Prompt if you encounter issues

### Common Issues
- **Database connection error**: Check your DATABASE_URL in `.env`
- **Port already in use**: Change the PORT in `.env` to another number (e.g., 3000)
- **Missing API keys**: Ensure all required environment variables are set

## Production Deployment
1. Run `npm run build`
2. Set production environment variables
3. Start with `npm run start`

## Features
- AI-powered waste image analysis
- Smart waste pickup scheduling
- Community reporting system
- Educational resources and quizzes
- Rewards and gamification
- Real-time analytics dashboard