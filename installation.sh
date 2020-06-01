#1. install virtual box, virtualbox.org

#2. download a ubuntu image

#3. install extension pack
sudo apt-get install -y virtualbox virtualbox-ext-pack


#4.start to install minikube

 #a. install dependencies:
 sudo apt-get update && sudo apt-get install -y apt-transport-https && sudo apt install -y curl


 #b. install kubectl
 curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl 
 
 chmod +x kubectl && sudo mv kubectl /usr/bin/.

 which kubectl

 #c. install minikube
 curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 

 chmod +x minikube && sudo mv minikube /usr/local/bin/

 minikube version

 #d. install required component
 sudo apt-get install -y conntrack

 #e. finally we are done with the installation and now start the minikube
 sudo minikube start --vm-driver=none

 #f. start the dashboard
 sudo minikube dashboard

 #e. at this point, everything is successful, now just poke around with following commands
 sudo kubectl api-versions

 sudo kubectl get nodes

 sudo kubectl get pod

 sudo kubectl cluster-info
 
 #see youtube tutorial of this installation https://www.youtube.com/watch?v=_notRRlZgUo
