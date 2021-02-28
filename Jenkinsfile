pipeline {
    agent any

    stages {
        stage('Verify GIT') {
            steps {
                echo 'Hello World'
                echo "$GIT_BRANCH"
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Working on Docker now ....'
                pwsh(script: 'docker images -a')
                echo 'now changing the directory'
                pwsh(script: 'cd webapp')
                echo 'building the image now'
                pwsh(script: 'docker build -t webappimage .')
                echo 'image creation complete....'
                pwsh(script: 'docker images -a')
                pwsh(script: 'cd ..')
            }
        }
         
    }
}
