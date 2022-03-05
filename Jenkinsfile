pipeline {
    agent any
    tools {
  terraform 'Terraform11'
  }

stages {  
    stage('Git checkout') {
 steps {
         git branch: 'main', credentialsId: '9e7c848b-a408-4bd2-861f-ae1dad9607d1', url: 'https://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@github.com/JAVJAGA/AZVDI'
            }
        }

    stage('Terraform Init') {
      steps {
        sh "${env.TERRAFORM_HOME}/terraform init -input=false"
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "${env.TERRAFORM_HOME}/terraform plan -out=tfplan -input=false -var-file='dev.tfvars'"
      }
    }
    stage('Terraform Apply') {
      steps {
        input 'Apply Plan'
        sh "${env.TERRAFORM_HOME}/terraform apply -input=false tfplan"
      }
    }
    stage('AWSpec Tests') {
      steps {
          sh '''#!/bin/bash -l
bundle install --path ~/.gem
bundle exec rake spec || true
'''

        junit(allowEmptyResults: true, testResults: '**/testResults/*.xml')
      }
    }
}
}