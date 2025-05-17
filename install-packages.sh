#!/bin/sh

# Bash "strict mode", to help catch problems and bugs in the shell
# script. Every bash script you write should include this. See
# http://redsymbol.net/articles/unofficial-bash-strict-mode/ for
# details.
set -euo pipefail

# Install updates:
apk -U upgrade --no-cache && rm -rf /var/cache/apk/*