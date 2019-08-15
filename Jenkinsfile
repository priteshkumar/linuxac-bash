node {
   def gitBranch
   stage('Cleanup'){
       cleanWs()
   }
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      
      git 'https://github.com/priteshkumar/linuxac-bash.git'
      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.           
      gitBranch = 'dev'
   }
   stage('Build') {
      // Run the maven build
        if (isUnix()) {
            //sh "git checkout -b '$gitBranch' origin/dev"
            copyArtifacts filter: 'test', fingerprintArtifacts: true, projectName: '../updptriggers/repogit'
            sh "./arrays.sh"
            sh "mkdir target"
            sh "cp *.sh test ./target/"
         }
   }
   stage('Results') {
      sh "tar -czf ./artifacts.tar.gz ./target/*"
      archiveArtifacts "*.gz"
      fingerprint 'artifacts.tar.gz'
      
   }
}
