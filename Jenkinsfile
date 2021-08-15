pipeline {

agent any

parameters { 
    choice( name: 'PROJECT', choices: ['BATA', 'TATA'], description: 'Select Project') 
    choice( name: 'ENV', choices: ['DEV', 'QA', 'DR', 'PROD'], description: 'Select Environment') 
}

stages {
    stage('checkout git code') {
        steps {
            git 'https://github.com/Sahilbhawke/infra-provision.git'
        }
    }
    
    stage('create ec2 instance') {
        steps{
            sh '''ansible-playbook ec2create.yaml -e PROJECT=${PROJECT} -e ENV=${ENV}'''
        }
    }
}
}
