FROM python:3.10-slim

WORKDIR /app

# Copy project files
COPY pyproject.toml uv.lock ./
COPY src/ ./src/

# Install dependencies and the package
RUN pip install --no-cache-dir .

# Run the server
CMD ["python", "src/mcp_outline/server.py"]

# Expose default MCP server port
EXPOSE 8000