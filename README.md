# SSH HONEYPOT

This is a basic Containerized SSH honeypot built using Python3 and docker. 

Some of the features it offers 

1. Detects the SSH user's activity (like, commands, malware uploads etc)

2. Logs information of SSH user.

3. Alerts admin by sending SMS/Email about the SSH user's IP address. 


Features in the RoadMap

1. Log rotation or Log archival.

2. Malicious user's IP address blocking after the attacker attempts to perfom malicious activites.


# How to Install 

1. Install Docker

[Docker Installation](https://docs.docker.com/engine/install/)

2. Use my image

```
# docker pull prajwal3498/honeypot
```
