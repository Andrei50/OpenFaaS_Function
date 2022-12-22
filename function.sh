#!/bin/bash
export OPENFAAS_URL=https://10.20.14.147:8080 #your IP from faasd (from first VM)
faas-cli login -u admin -p lHzs44tlIlX8srvhbu3eR5r3uTstXGFAawnpdZQhl0S8cMs8sSpMcqTUjjf6aqw #password from first VM
git clone https://github.com/Andrei50/Figlet_OpenFaaS 
cd Figlet_OpenFaaS
sudo chmod 666 /var/run/docker.sock
docker login
faas-cli store deploy Figlet #install from store for your function
faas-cli up -f ./show-html.yml
