#!/bin/bash

# Update package lists
apt-get update

# Install Tesseract and other dependencies
apt-get install -y tesseract-ocr libtesseract-dev libicu-dev libicu-dev libicu-dev

# Install Python packages
pip install -r requirements.txt