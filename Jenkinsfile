pipeline {
    agent any

    environment {
        TF_CLI_ARGS = "-input=false"
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh "git clone https://$USERNAME:$PASSWORD@github.com/itzchioma/terraform-jenkins.git"
                    }
                }
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
                    withAWS(credentials: 'aws-credentials') {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
                    withAWS(credentials: 'aws-credentials') {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}