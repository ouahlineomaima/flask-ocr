[[Visit the API]](https://flaskocrapi.azurewebsites.net)

# Flask + pytesseract

This API recognize the text from a given image
it supports image from web (by giving the url) or local images by giving their base64 string

## Link

https://flaskocrapi.azurewebsites.net

## How it Works

Send a POST request to https://flaskocrapi.azurewebsites.net/extract_words with a body in JSON format containing image_uri and image attributes
The image attribute must contain the base64 string of the image

## Example with terminal

```bash
curl -X POST -H 'Content-Type: application/json' -d '{"image_uri": "https://www.manger-citoyen.org/img/posts/48.jpg", "image":"null"}' https://flaskocrapi.azurewebsites.net/extract_words

{
    "words": [
        "tomate,",
        "farine",
        "de",
        "blé,",
        "saindoux,",
        "sel,",
        "aréme,",
        "gélifiants",
        ":",
        "farine",
        "de",
        "graines",
        "de",
        "caroube",
        "et",
        "ome",
        "guar",
        ".",
        "Haricots",
        "blancs",
        "précuits",
        "(",
        "f",
        "isses",
        "fumées",
        "(18%)",
        ":",
        "viande",
        "de",
        "din",
        "le",
        "porc,",
        "maigre",
        "de",
        "téte",
        "de",
        "pore,",
        "via",
        "le",
        "porc,",
        "eau,",
        "farinede",
        "blé,",
        "protéine",
        "soja,",
        "couenne",
        "de",
        "porc,",
        "sel,",
        "gelifiant;",
        "E40",
        "stabilisants:",
        "£450,",
        "£452,",
        "aromes,",
        "coriandre,",
        "conservateurs:",
        "£250,",
        "£316,",
        "exhausteur",
        "de,",
        "goilt",
        ";",
        "E621,",
        "protéines",
        "de",
        "lait."
    ]
}
```


