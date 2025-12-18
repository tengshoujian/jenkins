pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "echo this is the first project 'Building..'"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}