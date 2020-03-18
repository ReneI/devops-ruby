pipeline {

    agent any

    environment {
  		PASS = credentials('registry-pass')
    }


    stages {


stage('Sonarqube') {
    environment {
        scannerHome = tool 'SonarQubeScanner'
    }    steps {
        withSonarQubeEnv('sonarqube') {
            sh "${scannerHome}/bin/sonar-scanner"
        }        timeout(time: 10, unit: 'MINUTES') {
            waitForQualityGate abortPipeline: true
        }
    }
}
        stage('Build') {
            steps {
                sh '''
		
           
                    '''   
            }
            post {
                success {
                }
            }

        }                        
     
    
    }
}
