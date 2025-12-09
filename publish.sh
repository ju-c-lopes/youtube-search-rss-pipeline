#!/bin/bash

# Captura o commit message vindo do Shortcuts
entered_search="$1"

cd "$HOME/Documents/youtube-search-rss" || exit 1

# Use sua chave ou HTTPS
export GIT_SSH_COMMAND="ssh -i $HOME/.ssh/id_rsa -o IdentitiesOnly=yes"

git add .

# Commit seguro (evita erro se não houver mudanças)
git diff --cached --quiet || git commit -m "$entered_search inserted"

git push origin main
