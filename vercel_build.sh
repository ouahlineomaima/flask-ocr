#!/bin/bash

# Update package lists
sudo apt-get update

# Install Tesseract and other dependencies
sudo apt-get install -y tesseract-ocr libtesseract-dev libicu-dev libicu-dev libicu-dev

# Install Python packages
pip install -r requirements.txt