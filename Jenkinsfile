pipeline{
    agent any
    stages{
        stage('Docker image build'){
            steps{
                sh 'sudo docker build -t jenkins-demo-app:latest .'
                sh 'docker tag jenkins-demo-app lakshmiswarna041/jenkins-demo-app:latest'
                
            }
        }
        stage('Publish image to dockerhub'){
            steps{
                withDockerRegistry([credentialsId: "dockerhubAccountCreds", url: ""])
                sh 'docker push lakshmiswarna041/jenkins-demo-app:latest'
                // sh 'docker push lakshmiswarna041/jenkins-demo-app:$BUILD_NUMBER'
            }
        }
        stage('Run docker container on Jenkins agent'){
            steps{
                sh 'docker run -d -p 8003:4200 lakshmiswarna041/jenkins-demo-app'
            }
        }
    }
}
