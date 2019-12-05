pipeline{
    parameters {
        string defaultValue: 'Hari', description: 'Choose name', name: 'name', trim: false
        choice choices: ['Banglore', 'Pune', 'Delhi', 'Noida'], description: 'Choose your location', name: 'locatioion'
    }

    agent any
    stages{
        stage('Hello'){
            echo "Your name is ${params.name}"
            echo "Your location is ${params.locatioion}"
        }
    }
}