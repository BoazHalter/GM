

docker run --name jenkins-auto -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v //var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home boazhalter/gm:jenkins-latest
docker exec jenkins-auto java -jar jenkins-cli.jar -s http://localhost:8080 -auth $args[0]:$args[1] reload-jcasc-configuration
chmod a+rw /var/run/docker.sock
