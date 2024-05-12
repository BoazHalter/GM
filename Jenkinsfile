pipeline {
     agent {label 'docker-node'}
    stages {
        stage('Build') {
            steps {
      
                // Linting test using Flake8
                sh 'flake8 src/app.py || true'
            }
        }
        stage('Run') {
            steps {
                // Curl command to localhost:9090
                 sh 'python3 src/app.py &'
                 script{
                      def response = sh(script: "curl -s http://localhost:9090", returnStdout: true).trim()
                      if(response.equals("Hello GM")){
                           echo "Test passed"
                      }
                 }
            }
        }
         
        stage('Artifat') {
            steps {
                 sh'docker build . -t boazhalter/gm:latest'
                 withCredentials([usernamePassword(credentialsId: 'dockerhubCred', usernameVariable: 'username', passwordVariable: 'password')]) {
                 sh "docker login -u ${username} -p ${password}"
                 sh'docker push boazhalter/gm:latest'
                 }                 
            }
        }
    }
}
