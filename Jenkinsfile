pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building the project...'
                bat 'mvn clean compile'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'mvn test'
            }
            post {
                always {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('Package') {
            steps {
                echo 'Packaging the application...'
                bat 'mvn package -DskipTests'
            }
        }
        
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t calculator-app:latest -f docker/Dockerfile .'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                bat 'scripts\\build.bat'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executed successfully!'
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: false
        }
        failure {
            echo 'Pipeline failed!'
        }
        always {
            echo 'Cleaning up workspace...'
            cleanWs()
        }
    }
}
