This shows how to run docker container to test new functions with saltcheck

# Build local docker image
```
sudo docker build -t wcannon/saltcheck:1.0 .
```

# Run docker local docker container
```
sudo docker run --name salt-check --add-host=salt:127.0.0.1 --rm -it -v ${PWD}/salt:/srv/salt/ -v ${PWD}/pillar:/srv/pillar -v ${PWD}/minion_config/minion:/etc/salt/minion wcannon/saltcheck:1.0 bash
```

> mapping the minion file to /etc/salt/minion means we don't need --local flag

# Synchronize all custom modules
```
salt-call saltutil.sync_all
```

# Check saltcheck documentaion examples
```
salt-call saltcheck -d
```

# Run single state tests (example apache)
```
salt-call saltcheck.run_state_tests apache
```

# Run single state tests with junit output (example apache)
```
salt-call saltcheck.run_state_tests apache --out saltcheck_junit
```

# Run high states tests
```
salt-call saltcheck.run_highstate_tests
```

# Run high states tests with junit output
```
salt-call saltcheck.run_highstate_tests --out saltcheck_junit
```

# Simple Jenkinsfile with multiple steps pipeline
```
pipeline {
    agent {
        label 'your-node-with-docker'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/dawidmalina/salt-check.git'
                sh 'docker build -t wcannon/saltcheck:1.0 .'
            }
        }
        stage('Prepare') {
            steps {
                // start container
                sh 'docker run --name salt-check --add-host=salt:127.0.0.1 -d -v ${ORG_PATH}/salt:/srv/salt/ -v ${PWD}/pillar:/srv/pillar -v ${ORG_PATH}/minion_config/minion:/etc/salt/minion wcannon/saltcheck:1.0 tail -f /dev/null'
                sh 'docker exec -t salt-check salt-call saltutil.sync_all'
            }
        }
        stage('Test') {
            steps {
                sh 'docker exec -t salt-check salt-call saltcheck.run_highstate_tests --out saltcheck_junit > saltcheck-report.xml'
                junit '**/*.xml'
            }
        }
    }
    post {
        always {
            echo 'Cleanup test container!'
            sh 'docker rm -f salt-check'
        }
    }
}
```
