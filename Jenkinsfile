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
                powershell 'terraform init'
                }
            }
        }*/

        stage('Terraform plan') {
           /* when{
                branch "Dev"
            } */
            steps {
                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                powershell 'terraform plan'
                echo "final"   
                }
                       
            }
        }

        stage('Terraform apply') {
            when{
                branch "main"
            }
            steps {
                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                powershell 'terraform apply --auto-approve'
                }
                
                       
            }
        }    


        stage('5 minutes Terraform destoy') {
            when{
                branch "main"
            }
            steps {

                powershell 'sleep 300'

                dir('C:/Dev/Code/Challenge/IaC-DevOps-Challenge') {
                powershell 'terraform apply --auto-approve'
                }
                
                       
            }
        }

        
    }

}
