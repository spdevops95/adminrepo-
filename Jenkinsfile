pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying your application'
            }
        }

        stage('DeployToProduction') {
            when {
                expression { BRANCH_NAME == 'master' }
            }
            steps {
                echo 'Deploying to production'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up'
        }
    }
}

