#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euxo pipefail
IFS=$'\n\t'

echo "Setting up SSH to access theme"
mkdir -p ~/.ssh
eval "$(ssh-agent -s)"
echo $THEME_SSH_KEY | base64 -d > ~/.ssh/hydejack_8_pro
echo $'Host hydejack\n    HostName github.com\n    IdentitiesOnly yes\n    IdentityFile ~/.ssh/hydejack_8_pro' > ~/.ssh/config

# Also add GitHub
echo "|1|L3rBLxsTRXA5C48+4DcV8hHvK4Y=|fFirAqNJJWk+xY7wkc703OcVH+w= ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==" > ~/.ssh/known_hosts
