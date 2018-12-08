#!/usr/bin/bash
echo "Update lib/typescriptServices.js"
echo " - Downloading latest version"
curl -o lib/typescriptServices.js https://cdn.jsdelivr.net/gh/Microsoft/TypeScript/lib/typescriptServices.js
echo " - Minifying downloaded file"
uglifyjs lib/typescriptServices.js -o lib/typescriptServices.min.js -c -m
echo "Done!"