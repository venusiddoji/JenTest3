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
                pwsh(script: """
                cd webapp\
                docker build -t webappimage .
                docker images -a
                cd ..
                """)
            }
        }
         
    }
}