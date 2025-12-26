pipeline {
    agent any

    environment {
        IMAGE_NAME = "jenkins-ci-cd-app"
        CONTAINER_NAME = "jenkins-test-container"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x scripts/*.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Docker Run & Validate') {
            steps {
                sh """
                docker rm -f ${CONTAINER_NAME} || true
                docker run -d -p 5000:5000 --name ${CONTAINER_NAME} ${IMAGE_NAME}
                sleep 5
                curl http://localhost:5000/health
                """
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully'
        }

        failure {
            echo 'Pipeline failed. Check logs for details'
        }

        always {
            sh "docker rm -f ${CONTAINER_NAME} || true"
        }
    }
}
