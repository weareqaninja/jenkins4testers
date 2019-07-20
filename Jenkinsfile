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
        sh "./build/alpine.sh"
        sh "bundle install"
      }
    }
  }
}
