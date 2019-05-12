pipeline {

    agent any
      tools {
        maven 'Maven 3.6.0'
      }
    stages {
        stage('---clean---') {
            steps {
                sh "mvn clean"
            }
        }
        stage('--test--') {
            steps {
                sh "mvn test"
            }
        }
        stage('--package--') {
            steps {
                sh "mvn package"
            }
        }
        stage("Docker push") {
          agent any
            steps {
             //echo "docker login -u username -p password"
              sh "docker build -t example-mvn-feature ."
            }
        }
        stage("Deploy to staging") {
           agent any
           steps {
                echo "Deploy to staging"
                sh "docker run -d --rm -p 8765:8080 --name springboot example-mvn-feature"
           }
        }
        stage("Acceptance test") {
            steps {
              echo "TEST CASE"
            }
        }
    }
}
