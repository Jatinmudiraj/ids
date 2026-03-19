#!/bin/bash
echo "==========================================================="
echo "        ANTIGRAVITY IDS - INITIALIZATION SCRIPT            "
echo "==========================================================="

echo "[*] Step 1: Installing Required Python Dependencies..."
# Ensure pip is up to date, then install dependencies
python3 -m pip install --upgrade pip
python3 -m pip install rich joblib pandas scikit-learn numpy scipy PySide6

echo ""
echo "[*] Dependencies installed successfully!"
echo "[*] Step 2: Launching the Real-Time Threat Dashboard..."
echo "Note: The IDS natively requires 'sudo' privileges to read securely restricted authentication logs (/var/log/auth.log)."
echo "You will be prompted for your sudo password below so the IDS has permission to run."

# Launch the IDS CLI Dashboard
sudo python3 cli.py
