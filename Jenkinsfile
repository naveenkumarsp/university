pipeline {
    agent {
        docker {
            image 'naveenkumarsp/univerbase:version1'
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
        stage('Staging') { 
            steps {
                sh './jenkins/deliver.sh' 
                input message: 'Do you want to publish the changes? (Click "Proceed" to continue)' 
                sh './jenkins/kill.sh' 
            }
        }
    }
}
