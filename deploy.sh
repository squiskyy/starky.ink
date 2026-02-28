#!/bin/bash
# Deployment script for Starky Ink

set -e

echo "Building site..."
hugo --buildDrafts --baseURL "https://starky.ink/"

echo "Deploying to /var/www/html/starky.ink/..."
rsync -avz public/ /var/www/html/starky.ink/

echo "Setting permissions..."
chmod -R a+r /var/www/html/starky.ink/

echo "Done!"