pipeline {
    agent {
        docker {
            image 'ubuntu'
            args '-u root:sudo -v $HOME/workspace/myproject:/myproject'
        }
    }
    stages {
        stage('Test') {
            steps {
                echo 'hello mudafuka'
                sh 'python --version'
            }
        }
    }
}
