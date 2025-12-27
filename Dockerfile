FROM python:3.12-slim

WORKDIR /app

# Install dependencies first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code (this will be overridden by volume mount in dev)
COPY . .

# Default command
CMD ["python", "main.py"]
