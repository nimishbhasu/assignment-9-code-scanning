FROM python:3.11-slim

WORKDIR /app

# Install deps first (better layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the source
COPY . .

# Expose if you ever run it locally
EXPOSE 8000

# Do NOT run migrations at build time
# Just a harmless default; not executed during build
CMD ["python", "--version"]
