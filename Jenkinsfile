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
           releasedVersion = getReleasedVersion()
            steps {
             echo "docker login -u username -p password: ${releasedVersion}"
            }
        }
        stage("Deploy to staging") {
           steps {
                echo "Deploy to staging"
           }
        }
        stage("Acceptance test") {
            steps {
              echo "TEST CASE"
            }
        }
    }
}
