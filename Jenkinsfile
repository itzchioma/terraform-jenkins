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
            steps {
        script {
            // Use withCredentials to set AWS credentials for this stage
            withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                dir('terraform-jenkins') { // Assuming Terraform files are in the cloned directory
                    sh 'terraform init'
                }
            }
        }
    }
}

stage('Terraform Apply') {
    steps {
        script {
            // Use withCredentials to set AWS credentials for this stage
            withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                dir('terraform-jenkins') { // Assuming Terraform files are in the cloned directory
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
}