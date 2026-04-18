#!/bin/bash

# install packs
echo "[*] installing package..."
pkg update -y
pkg upgrade -y 
pkg install termux-api -y
echo "[/] done."

# install the app
echo "[*] installing stsup..."
curl -sL "https://github.com/Veroniclover/fprox/releases/download/v0.0.1/stsup" -o "${PREFIX}/bin/stsup"
chmod +x "${PREFIX}/bin/stsup"
echo "[/] done."

# allow external apps
echo "[*] reloading termux settings"
sed -i 's/^# allow-external-apps = true/allow-external-apps = true/' ~/.termux/termux.properties
termux-reload-settings || true
echo "[/] done."
