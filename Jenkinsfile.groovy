checkout(scm)       
    stage ('Templates Deployment'){
        sh """
          PATH=C:/terraform
          terraform init"
    }