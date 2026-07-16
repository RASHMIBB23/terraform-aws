pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/RASHMIBB23/terraform-aws-infra.git'
      }
    }
    stage('Terraform Init') {
      steps {
        dir('environments/dev') {
          sh 'terraform init'
        }
      }
    }
    stage('Terraform Plan') {
      steps {
        dir('environments/dev') {
          sh 'terraform plan -out=tfplan'
        }
      }
    }
    stage('Approval') {
      steps {
        input message: 'Apply infrastructure changes to AWS?'
      }
    }
    stage('Terraform Apply') {
      steps {
        dir('environments/dev') {
          sh 'terraform apply -auto-approve tfplan'
        }
      }
    }
  }
}
