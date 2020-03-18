
pipeline {
         agent any
    stages {
        stage('Code Checkout') {
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
    }   stage('lint test ') {
      steps {
        sh 'bundle exec rubocop -c config/rubocop.yml --require rubocop/formatter/checkstyle_formatter --format RuboCop::Formatter::CheckstyleFormatter --no-color --rails --out tmp/checkstyle.xml || true'
      }
    }

         stage('unit Test') {
                            steps {
                                sh "ruby tests.rb> TEST_RESULT.data.xml"

                              }
                        }
             
     }

 }
