pipeline {
    agent {
        docker {
            image 'naveenkumarsp/univerbase:version1' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}
