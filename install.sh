#!/bin/bash

arch=$(uname -m)
bin="$PREFIX/bin/fprox"

case "$arch" in
    aarch64)
        url="https://github.com/Veroniclover/fprox/releases/download/v0.0.1/fprox-arm64"
        ;;
    armv7l|armv8l)
        url="https://github.com/Veroniclover/fprox/releases/download/v0.0.1/fprox-arm"
        ;;
    i686)
        url="https://github.com/Veroniclover/fprox/releases/download/v0.0.1/fprox-386"
        ;;
    x86_64)
        url="https://github.com/Veroniclover/fprox/releases/download/v0.0.1/fprox-amd64"
        ;;
    *)
        echo "Architecture $arch not supported, contact owner for support"
        exit 1
        ;;
esac

curl -sL "$url" -o "$bin"
chmod +x "$bin"
echo "Installation Successful, you can proceed to the second command"
