pipeline {
    agent any

    stages {
        stage('Build Process') {
            steps {
                sh 'sudo docker build -t dattatrayd/frontend-app:latest .'
            }
        }
         stage('Push Docker Image') 
	{
        steps {
       withCredentials([string(credentialsId: 'dockerHubPassword', variable: 'dockerHubPassword')]) 
       {
       sh "sudo docker login -u dattatrayd -p ${dockerHubPassword}"
	}
    	sh 'sudo docker push dattatrayd/frontend-app:latest'
            }
        }
       
    }
}
    
   
    

