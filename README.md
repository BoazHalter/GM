# GM
This repo is for deploying a docker jenkins server on windows machine localhost.<br>
The jenkins server uses docker container as nodes.<br>
The repo contains a pipeline Jenkinsfile for a pipeline job named gm.<br> 
The job build a python app.py application in /src directory it also test and publish the application docker images artifact to docker hub.

prerequisite:<br> 
- docker engine.<br>
- run powershell as admin.
- free registration @ https://dashboard.ngrok.com/
```
.\infra-install.ps1 "username" "password"
.\ngrok http http://localhost:8080
```
The repo contains a Jcasc jenkins.yaml which is used by the infra-install.ps1 to set the configuration of jenkins.<br>  
The "gm" job is triggered by a push event to the current repo.<br>
It does that by using the reverse proxy tool ngrok .<br>


