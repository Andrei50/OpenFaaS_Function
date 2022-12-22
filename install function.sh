#!/bin/bash
export OPENFAAS_URL=https://1515.1515.1515.1515:8080 #your IP from faasd (from first VM)
faas-cli login -u admin -p 1234 #password from first VM
git clone https://github.com/Andrei50/Figlet_OpenFaaS 
cd Figlet_OpenFaaS
docker login
faas-cli store deploy Figlet #install from store for your function
faas-cli up -f ./show-html.yml