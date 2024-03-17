pipeline {
    agent any 

    stages {
        stage('Checkout code from Github')
        {
            steps {
                script {
                    git 
                    url : 'https://github.com/Sindhujakodaparthi/Form.git'
                    tool : 'Git'
                }
            }
        }
    }
}