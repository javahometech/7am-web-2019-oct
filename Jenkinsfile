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
                sh "docker build -t 172.31.36.207:8083/javahome:${currentBuild.id} ."
            }
        }

        stage('Docker Push'){
            steps{
                sh "docker login 172.31.36.207:8083 -u admin -p javahome"
                sh "docker push 172.31.36.207:8083/javahome:${currentBuild.id}"
            }
        }
    }
}