pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/username/repository.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t my-python-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run my-python-app pytest tests/'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:8080 my-python-app'
            }
        }
    }
}
