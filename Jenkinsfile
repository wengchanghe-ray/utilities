pipeline {
    agent none
    environment {
        CI = 'true'
    }
    stages {
        stage('init') {
           agent any
            steps {
                echo "Remove all files..."
                //deleteDir()
                sh 'rm -rf *'    //可能不太适合。
            }
        }
        stage('SCM Checkout') {     //从SVN中检出代码。
            agent any
            steps {      
                echo "Check out the project from github..."
                checkout([$class: 'GitSCM', branches: [[name: '*/uat']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'http://github.com/wengchanghe-ray/utilities']]])
            }
        }
        stage('Build/Launch Test') { //这个的意思是：直接启动一个container进行相关
            agent {                               //编译、单元测试、打包的工作。
                docker { image 'maven:3-alpine' }
            }
            steps {
                dir('myapp') {
                    echo "Begin to test..."
                    sh 'mvn -B package' 
                }
            }
        }
        stage('Deploy') {
            agent any
steps {
   // sleep time: 20, unit: "SECONDS"
                sh './build/deploy_uat.sh'        //这个脚本包括docker的构建（装配代码）和启动
                echo 'Deploy finished!'
                sh './build/test_uat.sh'        //这个脚本包括测试（可以集成测试，界面测试等）
                echo 'Test finished!'
            }
        }
    }
}

