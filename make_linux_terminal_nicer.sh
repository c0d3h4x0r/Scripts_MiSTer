#!/bin/sh

set -e

echo "Making Linux nice..."

THIS_DIR="$(cd "$(dirname "$0")" && pwd -P)"

echo " - Modifying root user settings..."
cp -f "$THIS_DIR/nice-linux/.bashrc" /root/
cp -f "$THIS_DIR/nice-linux/.bash_aliases" /root/
cp -f "$THIS_DIR/nice-linux/.bash_logout" /root/
cp -f "$THIS_DIR/nice-linux/.bash_prompt" /root/
cp -f "$THIS_DIR/nice-linux/.profile" /root/
cp -f "$THIS_DIR/nice-linux/.vimrc" /root/
cp -rf "$THIS_DIR/nice-linux/.ssh" /root/

echo "Done."
