pipeline{
    agent any
    environment {
        PATH = "${PATH}:${tool name: 'maven3', type: 'maven'}/bin"
    }
    stages{
        stage('SCM Checkout'){
            steps{
                git credentialsId: 'javahometech', 
			        url: 'https://github.com/javahometech/7am-web-2019-oct',
			        branch: 'master'
            }
        }
        stage('Maven Build'){
            steps{
		        sh "mvn clean package"
            }
        }
    }
}