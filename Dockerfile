# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app code
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose internal port
EXPOSE 8080

# Run Flask app
CMD ["python", "app.py"]
