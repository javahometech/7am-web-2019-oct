pipeline{
    agent any
    environment {
        PATH = "${PATH}:${tool name: 'maven3', type: 'maven'}/bin"
    }
    stages{
        stage('Maven Build'){
            steps{
		        sh "mvn clean package"
            }
        }

        stage('Nexus Upload'){
            steps{
		       sh returnStatus: true, script: 'mvn deploy'
            }
        }

        stage('Deploy Dev'){
            steps{
		        sh "ansible-plybook -i dev.inv tomcat-deploy.yml"
            }
        }
        
    }
}