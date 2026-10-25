pipeline {
  agent any
  stages {
    stage('automation_robotframework') {
      steps {
        bat 'robot -d reports testscripts\\Test_e2e.robot'
      }
    }
  }
}