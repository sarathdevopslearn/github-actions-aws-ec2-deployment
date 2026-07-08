# Base Image
FROM python:3.13-slim

# Prevent Python from writing .pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# Display logs immediately
ENV PYTHONUNBUFFERED=1

# Working Directory
WORKDIR /app

# Copy dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY . .

# Expose application port
EXPOSE 5000

# Start application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]