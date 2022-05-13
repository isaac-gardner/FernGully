sudo apt-get -y install apt-transport-https ca-certificates gnupg-agent software-properties-common  

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
sudo apt-get update 
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose

curl -o docker-compose.yml https://raw.githubusercontent.com/isaac-gardner/FernGully/main/docker-compose.yml

mkdir data
curl -Lo data/FernGullyExam.tar.gz https://github.com/isaac-gardner/FernGully/raw/main/FernGully.tar.gz
tar -zxvf data/FernGullyExam.tar.gz

docker-compose up -d
