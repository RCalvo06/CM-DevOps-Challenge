pipeline {
    agent {
        label 'terraform-agent'
    }
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION = credentials('AWS_REGION')
    }

    stages{
        stage('Cleaning Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checking SCM') {
            steps {
                checkout scm
            }
        }

        /*stage('Terraform init') {
            steps {
                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                sh 'terraform init'
                }
            }
        }*/

        stage('Terraform plan') {
           /* when{
                branch "Dev"
            } */
            steps {
                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                sh 'terraform plan'
                }
                       
            }
        }

        stage('Terraform apply') {
            when{
                branch "main"
            }
            steps {
                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                sh 'terraform apply --auto-approve'
                }
                
                       
            }
        }    

        
    }

}
