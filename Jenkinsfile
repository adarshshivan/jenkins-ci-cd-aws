pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                sh 'chmod +x scripts/*.sh'
                sh 'docker build -t jenkins-ci-cd-app .'
            }
        }

        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Docker Run & Validate') {
            steps {
                sh '''
                docker rm -f jenkins-test-container || true
                docker run -d -p 5000:5000 --name jenkins-test-container jenkins-ci-cd-app
                sleep 5
                curl http://localhost:5000/health
                '''
            }
        }
    }

    post {
        always {
            sh 'docker rm -f jenkins-test-container || true'
        }
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
