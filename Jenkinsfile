pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build('flask-app')
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'python -m unittest discover -s tests'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    dockerImage.run('-d -p 5000:5000')
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished'
        }
    }
}
