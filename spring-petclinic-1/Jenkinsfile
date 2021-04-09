pipeline {
    agent any
    stages{
        stage(scm){
            steps{
                git 'https://github.com/sriison/spring-petclinic.git'
            }
        }
        
        stage(build){
            steps{
                sh '''
                mvn clean install
                '''
            }
        }

        stage(imagebuild){
            steps{
                sh '''
                sudo docker build -t srini-test .
                '''
            }
        }
    }
}
 
