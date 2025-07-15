# EcoBin - Smart Waste Management & Sustainability Portal

## 🌍 Overview

EcoBin is a comprehensive full-stack web application designed to transform waste management through intelligent tools, community engagement, and sustainability education. Built with real environmental data, EcoBin educates users about the global waste crisis while providing practical tools for sustainable living.

### 📊 Real Environmental Impact Data
- **2+ Billion tons** of waste generated globally each year (70% increase expected by 2050)
- **One-third** of all food production is wasted globally
- **Millions** of marine animals die annually from plastic pollution
- **Small percentage** of plastic waste is actually recycled

## Prerequisites

1. **Node.js** (v18 or higher) - [Download](https://nodejs.org/)
2. **MySQL** (optional) - [Download](https://dev.mysql.com/downloads/)
3. **Git** (optional) - [Download](https://git-scm.com/)

## 🚀 Quick Start

### Windows Users (Recommended)
```batch
# Navigate to project folder in Command Prompt
cd path\to\EcoBin

# First time setup
scripts\windows\setup-windows.bat

# Start development server  
scripts\windows\start-windows.bat

# Access at http://localhost:5000
```

### All Platforms
```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Access at http://localhost:5000
```

## ✨ Features

- 🤖 **AI-Powered Waste Analysis** - Upload images for intelligent waste classification
- 📅 **Smart Pickup Scheduling** - Schedule waste collection with calendar integration
- 🏘️ **Community Reporting** - Report environmental issues in your area
- 🎓 **Educational Platform** - Interactive quizzes and learning resources
- 🏆 **Rewards System** - Earn eco-points and redeem sustainable rewards
- 📈 **Analytics Dashboard** - Track your environmental impact

## 🛠️ Technology Stack

### Frontend
- **React 18** with TypeScript
- **Tailwind CSS** + shadcn/ui components
- **TanStack Query** for state management
- **Wouter** for routing
- **Vite** for development and builds

### Backend
- **Node.js** with Express.js
- **MySQL/SQLite** hybrid database
- **Drizzle ORM** for database operations
- **Google Gemini AI** for waste analysis
- **Session-based authentication**

## 🔧 Development Setup

### The .env file has been setup to hard code the API key's

### Installation
```bash
# Clone repository
git clone <repository-url>
cd EcoBin

# Install dependencies
npm install

# Run database migrations (if using MySQL)
npm run db:migrate

# Start development server
npm run dev
```

## 📁 Project Structure

```
EcoBin/
├── client/                 # Frontend React application
│   ├── src/
│   │   ├── components/     # Reusable UI components
│   │   ├── pages/          # Page components
│   │   ├── hooks/          # Custom React hooks
│   │   └── lib/           # Utility functions
│   └── index.html
├── server/                 # Backend Express application
│   ├── auth.ts            # Authentication logic
│   ├── db.ts              # Database connection
│   ├── gemini.ts          # AI waste analysis
│   ├── routes.ts          # API routes
│   └── storage.ts         # Database operations
├── shared/                 # Shared types and schemas
│   └── schema.ts          # Database schema & types
├── scripts/               # Utility scripts
│   ├── windows/           # Windows batch files
│   ├── export-data.js     # Data export utility
│   └── import-data.js     # Data import utility
├── migrations/            # Database migrations
└── data-export/          # Exported data files
```

## 🖥️ Windows Development

The `scripts/windows/` folder contains Windows-specific batch files for easy development:

| File | Purpose |
|------|---------|
| `setup-windows.bat` | First-time setup with dependency installation |
| `start-windows.bat` | Start development server (recommended) |
| `dev-windows.bat` | Alternative development server start |
| `dev-npm.bat` | Start using npm run dev |
| `build.bat` | Build for production |
| `test.bat` | Run tests |
| `fix-windows-directory.bat` | Fix directory-related issues |

### Troubleshooting Windows Issues
- Run Command Prompt as Administrator
- Ensure Node.js is properly installed
- Check PATH environment variables
- Use `fix-windows-directory.bat` for permission issues

## 🗄️ Database Information

### Hybrid Database System
- **Primary**: MySQL (if available)
- **Fallback**: SQLite (automatic fallback)
- **Benefits**: Cross-platform compatibility, easy local development

### Data Migration
```bash
# Export current data
node scripts/export-data.js

# Import data to new database  
node scripts/import-data.js
```

## 🔐 Authentication

EcoBin supports two authentication systems:

1. **Local Authentication** (Default)
   - Username/password system
   - Access via `/auth` page
   - Session-based with secure cookies

## 🤖 AI Integration

### Google Gemini AI
- **Purpose**: Waste image analysis and classification
- **Features**: Waste type detection, disposal advice, eco-points calculation
- **Setup**: Add `GOOGLE_AI_API_KEY` to environment variables
- **Usage**: Upload images through the Scanner page

## 📱 API Endpoints

### Authentication
- `POST /api/login` - User login
- `POST /api/register` - User registration
- `POST /api/logout` - User logout
- `GET /api/user` - Get current user

### Waste Management
- `POST /api/waste-entries` - Create waste entry
- `GET /api/waste-entries` - Get user's waste entries
- `POST /api/pickup-schedules` - Schedule pickup
- `GET /api/pickup-schedules` - Get pickup schedules

### Community
- `POST /api/community-reports` - Create community report
- `GET /api/community-reports` - Get community reports
- `GET /api/cleanup-events` - Get cleanup events
- `POST /api/cleanup-events/:id/join` - Join cleanup event

### Analytics & Rewards
- `GET /api/analytics` - Get user analytics
- `GET /api/rewards` - Get available rewards
- `POST /api/rewards/:id/redeem` - Redeem reward

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

- **Documentation Issues**: Check this README and try Windows batch files
- **Database Issues**: Use data export/import scripts for migration
- **API Issues**: Ensure environment variables are properly set
- **Build Issues**: Clear node_modules and reinstall dependencies

## 🌟 Acknowledgments

- Built using real environmental data to raise awareness
- Powered by Google Gemini AI for intelligent waste analysis
- Designed with sustainability and education in mind

---

**Made with ♻️ for a sustainable future**