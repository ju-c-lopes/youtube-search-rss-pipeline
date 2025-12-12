#!/bin/bash

# Captura o commit message vindo do Shortcuts
read -r entered_search

cd "$HOME/Documents/youtube-search-rss" || exit 1

git add .

# Commit seguro (evita erro se não houver mudanças)
git diff --cached --quiet || git commit -m "$entered_search inserted"

git push origin main
