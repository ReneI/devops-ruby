pipeline {

    agent any

    environment {
  		PASS = credentials('registry-pass')
    }
    stages {


stage('Sonarqube') {
     steps {
   
      def scannerHome = tool 'SonarQubeScanner'
    
        withSonarQubeEnv('sonarqube') {
            sh "${scannerHome}/bin/sonar-scanner"
        }        timeout(time: 10, unit: 'MINUTES') {
            waitForQualityGate abortPipeline: true
        }
    }
}
                             
     
    
    }
}
