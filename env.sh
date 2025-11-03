#!/bin/bash

echo "init"
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
VENV_DIR="$BASE_DIR/venvForVELA"

clear
echo
echo "VELA Browser Development Kit v1Beta for Debian-Ubuntu"
echo

echo "Your Python Version:"
python3 -V
echo

if [ "$(id -u)" -ne 0 ]; then
    echo "Administrator:yes"
fi

echo "Installing dependencies..."
sudo apt update
sudo apt install -y python3-pip patchelf

PY_VER=$(python3 -V | awk '{print $2}' | cut -d. -f1,2)
sudo apt install -y python${PY_VER}-venv || sudo apt install -y python3-venv

if [ -d "$VENV_DIR" ]; then
    echo "venv already exists"
    echo ""
    echo "NOTICE"
    echo "Load dependencies:"
    echo "pip install qtawesome PyQt6 PyQt6-WebEngine logzero"
    echo "Run VELA:"
    echo "python3 Software.py"
    echo "Build VELA:"
    echo "pip install pyinstaller"
    echo "pyinstaller --clean -F Software.py"
    echo ""
    echo "Activating venv..."
    bash --rcfile "$VENV_DIR/bin/activate"
else
    echo "venv not found"
    echo "Creating venv..."
    python3 -m venv "$VENV_DIR"
    echo "venv created."
    echo ""
    echo "NOTICE"
    echo "Load dependencies:"
    echo "pip install qtawesome PyQt6 PyQt6-WebEngine logzero"
    echo "Run VELA:"
    echo "python3 Software.py"
    echo "Build VELA:"
    echo "pip install pyinstaller"
    echo "pyinstaller --clean -F Software.py"
    echo ""
    echo "Activating venv..."
    bash --rcfile "$VENV_DIR/bin/activate"
fi

echo "VELA Browser Development Kit - Terminated successfully"