#!/bin/bash

exec > /dev/null 2>&1

# Captura o commit message vindo do Shortcuts
entered_search="$1"
echo "$entered_search"

cd "$HOME/Documents/youtube-search-rss" || exit 1

# Use sua chave ou HTTPS
export GIT_SSH_COMMAND="ssh -i $HOME/.ssh/id_rsa -o IdentitiesOnly=yes"

git add .

# Commit seguro (evita erro se não houver mudanças)
git commit -m "$entered_search inserted"

git push origin main
