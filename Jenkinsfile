pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                deleteDir()
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-credentials', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh 'git clone https://github.com/itzchioma/terraform-jenkins'
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
    
                stage('Terraform Import') 
            steps {
                // Run Terraform commands
                script {
                    // Assuming Terraform is installed and available in PATH
                    // You might need to adjust the paths and resource identifiers accordingly
                    
                    // Import existing resources into Terraform state
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        dir('terraform-jenkins') { // Assuming Terraform files are in the cloned directory
                            sh 'terraform import aws_security_group.security_group sg-0123456789abcdef0'
                        }
                    sh 'terraform import aws_instance.example i-0123456789abcdef0'
                    sh 'terraform import aws_security_group.security_group sg-0123456789abcdef0'
                    
                    // Repeat for other resources as needed
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
               /* stage('Terraform destroy') {
            steps {
                script {
                    // Use withCredentials to set AWS credentials for this stage
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        dir('terraform-jenkins') { // Assuming Terraform files are in the cloned directory
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }*/
    }
}
