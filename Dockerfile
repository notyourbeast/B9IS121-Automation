# Use a lightweight Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app file
COPY app.py .

# Install dependencies
RUN pip install flask

# Expose port 8080 for external access
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
