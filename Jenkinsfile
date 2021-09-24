pipeline {
  agent {
    label "justice-codegen-sdk"
  }
  stages {
    stage('Lint') {
      steps {
        sh "make lint"
      }
    }
  }
}
