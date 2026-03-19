FROM feelingsurf/viewer:stable

# Switch to root to install python for our dummy server
USER root
RUN apt-get update && apt-get install -y python3 curl

# Start script copy karein
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Render UptimeRobot port
EXPOSE 10000

# Custom entrypoint jo dono cheezein chalayega
ENTRYPOINT ["/start.sh"]

