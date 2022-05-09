pipeline {     
    agent any            
    stages{     
        stage('Build docker Image'){          
            steps{               
                sh 'docker build -t  jenkins-demo-app .'               
                sh 'docker tag jenkins-demo-app lakshmiswarna041/jenkins-demo-app:latest'
                sh 'docker tag jenkins-demo-app lakshmiswarna041/jenkins-demo-app:$BUILD_NUMBER'    
            }     
        }       
        stage('Push Image'){          
            steps{       
                withDockerRegistry([ credentialsId: "dockerhubAccountCreds", url: "" ]) {                   
                sh 'docker push lakshmiswarna041/jenkins-demo-app:latest'       
                sh 'docker push lakshmiswarna041/jenkins-demo-app:$BUILD_NUMBER'      
                }
            }
        }     
    }
}
