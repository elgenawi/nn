# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Set environment variables (optional)
# ENV FLASK_APP=app.py
# ENV FLASK_RUN_HOST=0.0.0.0

# Expose port (change if your app uses a different port)
EXPOSE 5000

# Start the app (adjust if you use something other than Flask)
CMD ["python", "app.py"]
