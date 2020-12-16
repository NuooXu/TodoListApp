# TodoListApp
This TodoListApp use React realized single page frontend and use Node.js Express to realize backend functions.  
Using mongoDB Atlas for data storing.  
For part C added Redis to cache data.  

### Run PartB
#### Run locally
1. go to frontend directory, 'npm i','npm run start'  
2. go to backend directory, 'npm i','npm start'  
#### Repush to docker hub
1. go to frontend, 'npm run build', 'docker build -t dockerHubName/imageName', 'docker push dockerHubName/imageName'  
2. go to backend, 'docker build -t dockerHubName/imageName', 'docker push dockerHubName/imageName'  
#### Use terraform run
1. get into terraform derictory  
2. change 2 images' url and private key url(.pem file's derictory)  
3. 'terraform init', 'terraform plan', 'terraform apply'  
4. go to aws portal find this ec2 instance, get the public IPv4 url  
5. IPv4URL:3002?webapp=IPv4URL:3001
### Run PartC
#### Run locally
1. go to frontend directory, 'npm i','npm run start'  
2. go to backend directory, 'npm i','npm start'  
3. start redis locally
#### Repush to docker hub
1. go to frontend, 'npm run build', 'docker build -t dockerHubName/imageName', 'docker push dockerHubName/imageName'  
2. go to backend, 'docker build -t dockerHubName/imageName', 'docker push dockerHubName/imageName'
3. redis image use offical version
#### Run on minikube
1. get into kube derictory  
2. change the docker image url  
3. 'minikube start','chmod +x ./start.sh','./start.sh' then it will run 3 service (frontend, backend and redis)  
4. 'minikube service serviceName' run two times to get the frontend and backend url.  
5. frontendURL?webapp=backendURL to access the website which run on minikube （need open cors)
