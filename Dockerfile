# Build stage
FROM node:22-slim AS builder

WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci --only=production

# Production stage
FROM node:22-slim

WORKDIR /app

# Copy dependencies from builder
COPY --from=builder /app/node_modules ./node_modules

# Copy application code
COPY . .

ENV HOST=::
ENV PORT=3000

EXPOSE 3000

# Start the Express server
CMD ["node", "express.js"]