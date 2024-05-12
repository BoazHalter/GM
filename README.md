# GM
This repo is for deploying a docker jenkins server on windows machine.<br>
The jenkins server uses docker container as nodes.<br>
The repo contains a pipeline Jenkinsfile for a pipeline job named gm.<br> 
The job build the app.py application in /src directory it also test and publish the application docker images artifact to docker hub.

prerequisite:<br> 
docker engine.<br>
run powershell as admin.
```
.\infra-install.ps1 "usernamme" "password"
```
