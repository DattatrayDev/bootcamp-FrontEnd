pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sudo docker build -t dattatrayd/front:latest .'
            }
        }
    }
    stage('Push Docker Image')
    { 
    withCredentials([string(credentialsId: 'dockerHubPassword', variable: 'dockerHubPassword')]) 
      {
       sh "sudo docker login -u dattatrayd -p ${dockerHubPassword}"
	}
    	sh 'sudo docker push dattatrayd/front:latest'
    }
}
