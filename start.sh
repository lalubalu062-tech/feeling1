#!/bin/bash

echo "Starting Dummy Web Server on Port 8080 for SnapDeploy..."
# Background me ek simple web page chalayega
cd /tmp && python3 -m http.server 8080 &

echo "Starting FeelingSurf Viewer..."
# Base image ka original program start karne ke liye
if [ -x /entrypoint.sh ]; then
    exec /entrypoint.sh
else
    echo "Entrypoint not found, trying default..."
    tail -f /dev/null
fi
