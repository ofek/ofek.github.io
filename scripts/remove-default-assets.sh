#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euxo pipefail
IFS=$'\n\t'

echo "Removing unnecessary assets..."

theme=$(bundler show jekyll-theme-hydejack-pro)

rm -rf "$theme/assets/img/blog/*"
rm -rf "$theme/assets/img/docs/*"
rm -rf "$theme/assets/img/projects/*"

echo "Success!"
