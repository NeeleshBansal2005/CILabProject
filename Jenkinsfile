pipeline {
    agent any
    stages {
        stage('Build & Dockerize') {
            steps {
                script {
                    sh 'chmod +x scripts/build.sh'
                    sh './scripts/build.sh'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'chmod +x scripts/deploy.sh'
                    sh './scripts/deploy.sh'
                }
            }
        }
    }
}