pipeline {
    agent any

    environment {
        TF_CLI_ARGS = "-input=false"
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

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
            steps {
                script {
                    withAWS(credentials: 'aws-credentials') {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    withAWS(credentials: 'aws-credentials') {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}