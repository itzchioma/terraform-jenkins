pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
        AWS_DEFAULT_REGION    = 'us-east-1'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/itzchioma/terraform-jenkins.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Apply / Destroy') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }

    }
}