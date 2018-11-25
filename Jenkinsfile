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
        stage('Build/Launch Test') { //这个的意思是：直接启动一个container进行相关
            agent {                               //编译、单元测试、打包的工作。
                docker { image 'maven:3-alpine' }
            }
            steps {
                dir('myapp') {
                    echo "Begin to unit test..."
                    sh 'mvn -B package' 
                }
            }
        }
        stage('Deploy') {
            	agent any
		steps {
                	sh './deploy_env.sh'        //这个脚本包括docker的构建（装配代码）和启动
                	echo 'Deploy finished!'
                	sh './test_master.sh'        //这个脚本包括测试（可以集成测试，界面测试等）
			dir('MySeleniumProject') {
				sh 'mvn -B test'
			}
                	echo 'Test finished!'
            	}
         }
     }
}

