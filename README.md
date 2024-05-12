# GM Devops Exam
This repo is for deploying a docker jenkins server on windows machine localhost.<br>
The jenkins server uses docker container as nodes.<br>
The repo contains a pipeline Jenkinsfile for a pipeline job named gm.<br> 
The job build and lint a python app.py application in /src directory it also test and publish the application docker images artifact to docker hub.

prerequisite:<br> 
- docker engine.<br>
- run powershell as admin.
- free registration @ https://dashboard.ngrok.com/
```
.\infra-install.ps1 "username" "password"
.\ngrok http http://localhost:8080
```
The repo contains a Jcasc jenkins.yaml which is used by the infra-install.ps1 to set the jenkins configuration. <br>  
The "gm" job is triggered by a push event to the current repo. <br>
The connectivity between GitHub Webhooks and the jenkins server, <br>
is possible by using the reverse proxy tool ngrok which exposes the localhost as an https://adress to the internet. <br>
After ngrok is executed the command would output an address which needs to be updated on the GitHub repo settings Webhooks section.<br>  
The "gm" job pushes the artifacts to:<br> 
- https://hub.docker.com/repository/docker/boazhalter/gm/.


