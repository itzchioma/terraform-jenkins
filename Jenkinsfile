pipeline {
    agent any

        environment {
        AWS_ACCESS_KEY_ID     = $"{credentials('aws-access-key-id')}"
        AWS_SECRET_ACCESS_KEY = $"{credentials('aws-secret-access-key')}"
        AWS_DEFAULT_REGION    = 'your-aws-region'
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
                    // Use withCredentials to set AWS credentials for this stage
                    withCredentials([usernamePassword(credentialsId: 'aws-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Use withCredentials to set AWS credentials for this stage
                    withCredentials([usernamePassword(credentialsId: 'aws-credentials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}