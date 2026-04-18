#!/bin/bash

set -euo pipefail

# install packs
pkg up -y
pkg install termux-api -y

# install the app
curl -sL "https://github.com/Veroniclover/fprox/releases/download/v0.0.1/stsup" -o "${PREFIX}/bin/stsup"
chmod +x  "${PREFIX}/bin/stsup"

# allow external apps
sed -i 's/^# allow-external-apps = true/allow-external-apps = true/' ~/.termux/termux.properties
termux-reload-settings
