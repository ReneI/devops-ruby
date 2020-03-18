
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
                          def scannerHome = tool 'SonarQubeScanner3';
                          withSonarQubeEnv("SonarQube") {
                          sh "${scannerHome}/bin/sonar-scanner"
                                       }
                               }
                           }
                        }

      
   stage('requirements') {
      steps {
        sh 'gem install bundler -v 2.0.1'
      }
    }
    stage('build') {
      steps {
        sh 'bundle install'
      }
    }

         stage("unit Test") {
                            steps {
                                sh "echo test"

                              }
                        }
             }
     }
