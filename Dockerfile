# Use the official Python image with the desired version from the runtime.txt
FROM python:3.9.17

# Set the working directory in the container
WORKDIR /app

# Copy the required files into the container
COPY runtime.txt .
COPY requirements.txt .
COPY bot.py .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the command to run your bot.py when the container starts
CMD ["python", "bot.py"]
