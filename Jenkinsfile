pipeline {
    agent {
        docker {
            image 'naveenkumarsp/univerbase:version1'
            args '-p 3000:3000'
			args '-p 5000:5000'
        }
    }
    environment {
        CI = 'true' 
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') { 
            steps {
                sh './jenkins/test.sh' 
            }
        }
    }
}
