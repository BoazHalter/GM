pipeline {
     agent any
    stages {
        stage('Build') {
            steps {
      
                // Linting test using Flake8
                sh 'flake8 src/app.py || true'
            }
        }
        stage('Run') {
            steps {
                // Curl command to localhost:8080
                 sh 'python3 src/app.py'
                 sh 'curl http://localhost:8080'
            }
        }
    }
}
