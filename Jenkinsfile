pipeline {
    agent any


    stages {
        stage('Checkout') {
            steps {
                deleteDir()
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh "git clone https://github.com/itzchioma/terraform-jenkins"
                    }
                }
            }
        }
        
        stage('Terraform Init') {
            withAWS(credentials: 'aws-credentials', region: 'us-east-1')
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            withAWS(credentials: 'aws-credentials', region: 'us-east-1')
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}