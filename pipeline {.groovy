pipeline {
    agent any
    tools {
  terraform 'Terraform11'
  }

stages {  
    stage('Git checkout') {
       steps {
          git credentialsId: 'github', url: 'https://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@github.com/JAVJAGA/AZVDI'
        }
    }


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
}
