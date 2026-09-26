# Start from a lightweight Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements first (so Docker can cache this layer separately)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Tell Docker which port the app runs on
EXPOSE 5000

# Command to run when container starts
CMD ["python", "app.py"]