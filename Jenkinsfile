pipeline {
  agent {
    docker {
        image "ruby:alpine"
        args "--network=skynet"
    }
  }
  stages {
    stage("Build") {
      sh "bundle install"
    }
  }
}
