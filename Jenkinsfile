pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
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
