#!/bin/bash

echo "Starting Dummy Web Server on Port 8080 for SnapDeploy..."
# Background me ek simple web server chalayega
cd /tmp && python3 -m http.server 8080 &

echo "Starting FeelingSurf Viewer..."
# Direct command to start FeelingSurf (with no-sandbox for root user)
feelingsurf-viewer --no-sandbox
