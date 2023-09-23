sudo apt update -y
sudo apt upgrade -y
sudo apt install curl wget apt-transport-https -y                    #to install the curl wget and apt-transport-https
sudo curl -fsSL https://get.docker.com -o get-docker.sh              #using the curl download the docker .sh file from the website 
sudo sh get-docker.sh                                                #run the docker .sh script
sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64    # getting the minikube file
sudo mv minikube-linux-amd64 /usr/local/bin/minikube                 #moving minkube to /usr/local/bin becoz all user executable commands should be in the /usr/local/bin
sudo chmod +x /usr/local/bin/minikube                                # giving the executable permissions to the minikube 
sudo minikube version                                                # chceking the version to check installation
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"   # using curl getting the file
sudo curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"    # same using curl getting the sha256 check
sudo echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl  #install kubectl by giving executable permission 
sudo minikube start --driver=docker --force                          #Start a cluster using the docker driver, /  The Docker driver allows you to install Kubernetes into an existing Docker install
