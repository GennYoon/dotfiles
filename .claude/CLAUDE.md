# Global Claude Code Configuration

This file contains global Claude Code settings used across all projects.

## Development Environment

### Basic Tools

- **Package Manager**: pnpm (project-specific)
- **Linting**: ESLint, Prettier, Biome
- **Type Checking**: TypeScript
- **Testing**: Jest, Vitest, etc.

### Common Commands

```bash
# Run linter
npm run lint
yarn lint
pnpm lint

# Run type check
npm run typecheck
yarn typecheck
pnpm typecheck

# Run tests
npm test
yarn test
pnpm test

# Build
npm run build
yarn build
pnpm build
```

## Coding Style Guide

### JavaScript/TypeScript

- Use ES6+ syntax
- Use const/let (no var)
- Prefer arrow functions
- Use clear variable names

### React

- Use functional components
- Utilize Hooks
- Define TypeScript props types

### File Structure

- Component-based folder structure
- Use index.ts/tsx for exports
- Use absolute path imports

## Git Conventions

### Commit Messages

```
type(scope): subject

body

footer
```

**Types:**

- feat: new feature
- fix: bug fix
- docs: documentation
- style: code formatting
- refactor: refactoring
- test: add/modify tests
- chore: build tasks

### Branch Strategy

- main: production
- develop: development
- feature/feature-name: new features
- hotfix/fix-description: urgent fixes

## Security Guidelines

- Manage sensitive data with environment variables
- Add .env files to .gitignore
- No hardcoding of API keys, passwords
- Regular security vulnerability checks

## Performance Optimization

- Use code splitting
- Optimize images
- Monitor bundle size
- Use memoization appropriately

---

This configuration serves as baseline guidelines for all projects.
Project-specific requirements can override these in individual CLAUDE.md files.

