#!/bin/bash

echo "Starting Dummy Web Server for Render & UptimeRobot..."
cd /tmp && python3 -m http.server 10000 &

echo "Starting FeelingSurf Viewer..."
# Base image ka original program start karne ke liye
# (Kyunki humne default entrypoint override kar diya hai)
if [ -x /entrypoint.sh ]; then
    exec /entrypoint.sh
else
    echo "Default entrypoint not found, trying fallback..."
    # Usually containers fallback to a default node or python command
    npm start || python3 main.py || tail -f /dev/null
fi

