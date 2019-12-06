def nexusUrl = "172.31.36.207:8083"
def dockerRepo = "172.31.36.207:8083/javahome"
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

        stage('Docker Build'){
            steps{
                sh "docker build -t ${dockerRepo}:${currentBuild.id} ."
            }
        }

        stage('Docker Push'){
            steps{
                withCredentials([string(credentialsId: 'nexus', variable: 'nexusPwd')]) {
                    sh "docker login ${nexusUrl} -u admin -p ${nexusPwd}"
                }
                
                sh "docker push ${dockerRepo}:${currentBuild.id}"
            }
        }
    }
}