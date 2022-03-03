pipeline {
    agent any

    tools {
  terraform 'Terraform'
  }
  stages {

        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }

        stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("terraform apply") {
            steps {
                sh ('terraform apply') 
            }
        }
    }