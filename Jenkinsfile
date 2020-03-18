
pipeline {
         agent any
    stages {
        stage("Code Checkout") {
            steps {
                git branch: 'master',
                credentialsId: 'github',
                url: 'https://github.com/ReneI/devops-ruby.git'
                  }
              }
         stage('Code Quality') {
                   steps {
                       script {
                          def scannerHome = tool 'SonarQubeScanner';
                          withSonarQubeEnv("SonarQube") {
                          sh "${tool("scannerHome")}/bin/sonar-scanner"
                                       }
                               }
                           }
                        }

         stage("Install Dependencies") {
                                  steps {
                                        sh " echo"

                                       }
                                }

         stage("unit Test") {
                            steps {
                                sh "echo test"

                              }
                        }
             }
     }
