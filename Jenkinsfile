pipeline {
  agent {
    docker {
        image "ruby:alpine"
        args "--network=skynet"
    }
  }
  stages {
    stage("Build") {
      steps {
        sh "chmod +x build/alpine.sh"
        sh "./build/alpine.sh"
        sh "bundle install"
      }
    }
  }
}
