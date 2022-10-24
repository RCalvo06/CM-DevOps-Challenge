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
                checkout scm()
            }
        }

        stage('Terraform plan') {
            when{
                branch "Dev"
            }
            steps {
                 sh 'terraform plan'
                                
            }
        }

        stage('terraform apply...') {
            when{
                branch 'main'
            }
            steps {
                
                sh 'terraform apply --auto-approve'
                
                
            }
        }        

        
    }

}