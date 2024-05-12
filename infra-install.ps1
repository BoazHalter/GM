param(
[string]$a,
[string]$b
)

docker rm -f jenkins-auto
docker run --name jenkins-auto -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v //var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home boazhalter/gm:jenkins-latest
Start-Sleep -Seconds 20
docker cp ./jenkins.yaml jenkins-auto:/var/jenkins_home/
Start-Sleep -Seconds 5
docker exec jenkins-auto java -jar jenkins-cli.jar -s http://localhost:8080 -auth ${a}:${b} reload-jcasc-configuration
