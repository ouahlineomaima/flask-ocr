#!/bin/bash

# Install Tesseract and other dependencies
sudo apt install -y tesseract-ocr libtesseract-dev libicu-dev libicu-dev libicu-dev

# Install Python packages
pip install -r requirements.txt
