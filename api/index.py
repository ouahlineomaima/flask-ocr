from flask import Flask, request, jsonify
import pytesseract
from PIL import Image

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, World!'

@app.route('/about')
def about():
    return 'About'
@app.route('/', methods=['POST'])
def extract_words():
    # Get the image URI from the request
    image_uri = request.json['image_uri']

    # Download the image from the URI
    #response = requests.get(image_uri)

    # Load the image into a PIL Image object
    img = Image.open(image_uri)

    # Use Pytesseract to extract text from the image
    text = pytesseract.image_to_string(img)

    # Split the text into words
    words = text.split()

    # Return the list of words as a JSON response
    return jsonify({'words': words})

