FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy workflow file
COPY My_workflow.json /home/node/.n8n/workflows/

# Expose port
EXPOSE 5678

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://your-railway-app.railway.app

# Start n8n
CMD ["n8n", "start"]
