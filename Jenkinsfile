pipeline {
     agent any 
 /*    agent { label 'devops-server' }
*/
    

    stages {
      /*  stage('checkout') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/MirzaShafeeq/jgsu-spring-petclinic.git'
            }
            
        } */
        
        stage('build'){
            steps {
            sh './mvnw clean package' // for linux sh 'mvnw clean package' or 'mvn clean package' can be used
            }
        

            post {
            //    // If Maven was able to run the tests, even if some of the test
            //    // failed, record the test results and archive the jar file.
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archiveArtifacts 'target/*.jar'
              }
            }
        }
    }
}
