#!/bin/bash
echo "==========================================================="
echo "        ANTIGRAVITY IDS - INITIALIZATION SCRIPT            "
echo "==========================================================="

# Detect if we have python3
if ! command -v python3 &> /dev/null; then
    echo "[!] Error: python3 is not installed. Please contact administrator."
    exit 1
fi

echo "[*] Step 1: Ensuring pip is installed..."
# Auto-detect if pip is missing and install it
if ! python3 -m pip --version &> /dev/null; then
    echo "[*] pip missing. Auto-installing python3-pip (requires root access)..."
    sudo apt update && sudo apt install -y python3-pip
fi

echo "[*] Step 2: Installing Required Python Dependencies..."
# Ensure pip is up to date, then install dependencies
# Note: Added --break-system-packages for modern Ubuntu/Debian compatibility
python3 -m pip install --upgrade pip 2>/dev/null
python3 -m pip install rich joblib pandas scikit-learn numpy scipy PySide6 --break-system-packages

echo ""
echo "[*] Dependencies installed successfully!"
echo "[*] Step 3: Launching the Real-Time Threat Dashboard..."

# Launch the IDS CLI Dashboard
sudo python3 cli.py
