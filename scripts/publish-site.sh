#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euxo pipefail
IFS=$'\n\t'

echo "Publishing site..."

rev=$(git rev-parse --short HEAD)
ls
cd _site

git init
git config user.name "Ofek Lev"
git config user.email "ofekmeister@gmail.com"

git remote add upstream "https://$GITHUB_TOKEN@github.com/ofek/ofek.github.io.git"
git fetch upstream
git reset upstream/master

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:master

echo "Published to master branch."
