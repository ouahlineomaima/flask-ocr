# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install tesseract and other dependencies
RUN apt-get update && \
    apt-get install -y tesseract-ocr libtesseract-dev libleptonica-dev pkg-config libpng-dev libjpeg-dev libtiff-dev zlib1g-dev

# Expose port 5000 for the Flask app to listen on
EXPOSE 5000

COPY . .

# Set the environment variable for the Flask app
ENV FLASK_APP app.py

# Run the command to start the Flask app
CMD ["flask", "run", "--host", "0.0.0.0"]
