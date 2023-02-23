# React App

This project contains an example React Application, which is containerized using Docker and exposed through an NGINX based web server.

## CI/CD

Continuous Integration/Continuous Deployment for this project was created using GitHub Actions. YAML configuration file can be found in .github/workflows.

## Kubernetes/Helm

Helm Chart for this project, including Deployment and Service can be found in /react-helm directory.

## Usage

### Use locally:

To use locally just do 'npm install' and 'npm start' from the react-app directory 

### Use from container:

To use from the container just run the 'startup.sh' script using 'bash startup.sh' and go to your browser and type 'localhost:3000'

### Use from Kubernetes:

On Kubernetes cluster type 'helm install react-helm  react-helm/ --values react-helm/values.yaml'