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
                 sh '''response = `curl http://localhost:9090`
                           echo ${response}
                      if [["${response}" == "Hello GM"];then
                           echo "Test passed"
                      fi
                 '''
                 
            }
        }
         
        stage('Artifat') {
            steps {
                 sh'docker build . -t boazhalter/gm:latest'
            }
        }
    }
}
