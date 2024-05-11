pipeline {
     agent {   
     docker {
        image 'python:3'
        label 'my-build-agent'
      }
    }
    stages {
        stage('Build') {
            steps {
                sh'pip install flake8' 
                // Linting test using Flake8
                sh 'flake8 src/app.py'
                
                // Docker build command
                sh 'docker build -t myapp .'
            }
        }
        stage('Run') {
            steps {
                // Curl command to localhost:8080
                sh 'curl http://localhost:8080'
            }
        }
    }
}
