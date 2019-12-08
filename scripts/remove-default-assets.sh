#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euxo pipefail
IFS=$'\n\t'

echo "Removing unnecessary assets..."

theme=$(bundler show jekyll-theme-hydejack-pro)

rm "$theme/assets/img/blog/*"
rm "$theme/assets/img/docs/*"
rm "$theme/assets/img/projects/*"

echo "Success!"
