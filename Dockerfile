FROM feelingsurf/viewer:stable

# Root user ban kar Python install karein (Dummy server ke liye)
USER root
RUN apt-get update && apt-get install -y python3

# Aapka FeelingSurf Token yahan direct set kar diya hai
ENV access_token=a66728c47adfaacd86291986d9f9827e

# Start script copy karein
COPY start.sh /start.sh
RUN chmod +x /start.sh

# SnapDeploy aur UptimeRobot ke liye port 8080 open karein
EXPOSE 8080

# Script ko run karein
ENTRYPOINT ["/start.sh"]
