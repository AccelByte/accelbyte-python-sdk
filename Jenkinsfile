library(
  identifier: 'jenkins-shared-library@master',
  retriever: modernSCM(
    [
      $class: 'GitSCMSource',
      remote: 'https://github.com/dhanarab/jenkins-pipeline-library.git'
    ]
  )
)

bitbucketHttpsCredentials = "Bitbucket_Build_AccelByte"
bitbucketSshCredentials = "build_account_bitbucket_key"

bitbucketPayload = null
bitbucketCommitHref = null

pipeline {
  agent {
    label "justice-codegen-sdk"
  }
  stages {
    stage('Prepare') {
      steps {
        script {
          if (env.BITBUCKET_PAYLOAD) {
            bitbucketPayload = readJSON text: env.BITBUCKET_PAYLOAD
            if (bitbucketPayload.pullrequest) {
              bitbucketCommitHref = bitbucketPayload.pullrequest.source.commit.links.self.href
            }
          }
          if (bitbucketCommitHref) {
            bitbucket.setBuildStatus(bitbucketHttpsCredentials, bitbucketCommitHref, "INPROGRESS", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
          }
          sshagent(credentials: [bitbucketSshCredentials]) {
            sh "rm -rf .justice-codegen-sdk"
            sh "git clone --depth=1 git@bitbucket.org:accelbyte/justice-codegen-sdk.git .justice-codegen-sdk"
          }
        }
      }
    }
    stage('Lint') {
      stages {
        stage('Lint Commits') {
          when {
            expression {
              return env.BITBUCKET_PULL_REQUEST_LATEST_COMMIT_FROM_TARGET_BRANCH
            }
          }
          agent {
            docker {
              image 'randondigital/commitlint:3.0'
              reuseNode true
            }
          }
          steps {
            sh "npm install @commitlint/config-conventional@13.2.0"
            sh "commitlint --color false --verbose --from ${env.BITBUCKET_PULL_REQUEST_LATEST_COMMIT_FROM_TARGET_BRANCH}"
          }
        }
        stage('Lint Source Code') {
          steps {
            sh "make lint"
          }
        }
      }
    }
    stage('Test') {
      stages {
        stage('Unit Tests') {
          agent {
            docker {
              image 'python:3.9-alpine'
              reuseNode true
            }
          }
          environment {
            PYTHONPATH = '/tmp/install:.justice-codegen-sdk/tools/codegen'
          }
          steps {
            sh "pip install -t /tmp/install -r requirements.txt"
            sh "pip install -t /tmp/install connexion[swagger-ui] bs4"
            sh "python -m justice_sdk_mock_server -s spec &"
            sh """for i in `seq 1 10`; do python -c "import sys;import socket;sys.exit(socket.socket(socket.AF_INET,socket.SOCK_STREAM).connect_ex(('localhost',8080)))" && exit 0 || sleep 10; done; exit 1"""
            sh "dos2unix tests/*.unit-test.sh"
            sh "find tests -type f -iname '*.unit-test.sh' | xargs -I{} sh -c 'sh {} || exit 255'"
          }
        }
      }
    }
  }
  post {
    success {
      script {
        if (bitbucketCommitHref) {
          bitbucket.setBuildStatus(bitbucketHttpsCredentials, bitbucketCommitHref, "SUCCESSFUL", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
        }
      }
    }
    failure {
      script {
        if (bitbucketCommitHref) {
          bitbucket.setBuildStatus(bitbucketHttpsCredentials, bitbucketCommitHref, "FAILED", env.JOB_NAME, "${env.JOB_NAME}-${env.BUILD_NUMBER}", "Jenkins", "${env.BUILD_URL}console")
        }
      }
    }
  }
}
