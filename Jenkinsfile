pipeline {
    agent any

    parameters {
        string(name: 'version', description: 'Upstream candlepin version to deploy.')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Create build') {
            steps {
                echo "Build ${params.version}"
                sh "git status"
                echo 'TODO: ENT-1779 Creating branch...'
                echo 'TODO: ENT-1779 Updating branch to new build...'
                echo 'TODO: ENT-1779 Building...'
            }
        }
        stage('Test') {
            steps {
                echo 'TODO: ENT-1781 Checking dependencies...'
                echo 'TODO: ENT-1780 Unit testing...'
            }
        }
        stage('Deploy to dev') {
            steps {
                echo 'TODO: ENT-1783 send email to chainsaw...'
                echo 'TODO: ENT-1788 wait for human to say yes...'
                echo 'TODO: ENT-1782 update puppet to deploy new version to dev...'
                echo 'TODO: ENT-1788 run ansible to update dev...'
            }
        }
        stage('Test dev') {
            steps {
                echo 'TODO: ENT-1789 run rest tests...'
            }
        }
        stage('Deploy to qa') {
            steps {
                echo 'TODO: ENT-1790 send email to chainsaw...'
                echo 'TODO: ENT-1790 wait for human to say yes...'
                echo 'TODO: ENT-1790 update puppet to deploy new version to qa...'
                echo 'TODO: ENT-1790 run ansible to update qa...'
            }
        }
        stage('Test qa') {
            steps {
                echo 'TODO: ENT-1791 run perf regression test & email results...'
            }
        }
        stage('Deploy to stage') {
            steps {
                echo 'TODO: ENT-1792 send email to chainsaw...'
                echo 'TODO: ENT-1792 wait for human to say yes...'
                echo 'TODO: ENT-1792 update puppet to deploy new version to stage...'
                echo 'TODO: ENT-1792 run ansible to update stage...'
            }
        }
        stage('Test stage') {
            steps {
                echo 'TODO: ENT-1792 run perf regression test & email results...'
            }
        }
        stage('Deploy to prod') {
            steps {
                echo 'TODO: ENT-1793 send email to chainsaw...'
                echo 'TODO: ENT-1793 wait for human to say yes...'
                echo 'TODO: ENT-1793 update puppet to deploy new version to prod...'
                echo 'TODO: ENT-1793 run ansible to update prod...'
            }
        }
    }
}

