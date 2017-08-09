export LANG=en_US
xdg-user-dirs-gtk-update
export LANG=zh_CN

sudo apt-get install -f vim

sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:plushuang-tw/uget-stable 
sudo add-apt-repository ppa:t-tujikawa/ppa 
sudo apt-get update 

mkdir ~/develop

# uget & aria2
sudo apt-get install -y uget aria2

# set git 
sudo apt-get install -y git
git config --global user.name amath0312
git config --global user.email amath0312@gmail.com
git config --global credential.helper store
git clone https://github.com/amath0312/osinitial.git

# python
sudo apt-get install -y python3-pip
sudo ln -s /usr/bin/pip3 /usr/bin/pip

# vscode
VSCODE=~/Downloads/vscode.deb
wget https://vscode.cdn.azure.cn/stable/379d2efb5539b09112c793d3d9a413017d736f89/code_1.13.1-1497464373_amd64.deb -O $VSCODE
sudo dpkg -i $VSCODE

# python
PYCHARM=~/Downloads/pycharm.tar.gz
wget https://download.jetbrains.8686c.com/python/pycharm-community-2017.1.4.tar.gz -O $PYCHARM
tar -xzvf $PYCHARM -C ~/develop/

# JDK=~/Downloads/jdk8.tar.gz
# wget http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz?AuthParam=1498385281_d3c7b58e62aeea2eface1ed61cf8047a -O $JDK
# sudo mkdir /usr/local/java
# sudo tar -xzvf $JDK -C /usr/local/java
# echo JAVA_HOME=/usr/local/java/jdk1.8.0_131 >> ~/.bashrc
echo PATH=$PATH:$JAVA_HOME/bin >> ~/.bashrc
source ~/.bashrc

# jdk
# sudo apt-get install -y python-software-properties
# sudo apt-get install -y oracle-java8-installer

# MariaBD
# force remove when fail to install
# sudo dpkg --remove --force-remove-reinstreq mariadb-server 
sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirrors.neusoft.edu.cn/mariadb/repo/10.2/ubuntu xenial main'
sudo apt-get update
sudo apt-get install -y mariadb-server

# eclipse
ECLIPSE=~/Downloads/eclipse.tar.gz
wget http://mirrors.opencas.org/eclipse/technology/epp/downloads/release/neon/3/eclipse-jee-neon-3-linux-gtk-x86_64.tar.gz -O $ECLIPSE
tar -xzvf $ECLIPSE -C ~/develop/

# nginx
sudo apt-get install nginx

# docker
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.daocloud.io/docker/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \sudo groupadd docker
sudo gpasswd -a zhaolin docker
sudo service docker restart

   "deb [arch=$(dpkg --print-architecture)] https://download.daocloud.io/docker/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y -q docker-ce=17.03.1*
sudo echo "{
    \"registry-mirrors\": [
        \"http://d475f88f.m.daocloud.io\"
    ],
    \"insecure-registries\": []
}" >  /etc/docker/daemon.jsonsudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.daocloud.io/docker/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=$(dpkg --print-architecture)] https://download.daocloud.io/docker/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y -q docker-ce=17.03.1*
sudo echo "{
    \"registry-mirrors\": [
        \"http://d475f88f.m.daocloud.io\"
    ],
    \"insecure-registries\": []
}" >  /etc/docker/daemon.json
sudo service docker start
sudo service docker start
sudo groupadd docker
sudo gpasswd -a zhaolin docker
sudo service docker restart
pip install -i https://pypi.douban.com/simple docker-compose

# ss
sudo apt-get install -y polipo
pip install shadowsocks
sudo echo "logSyslog = true
logFile = /var/log/polipo/polipo.log
proxyAddress = "0.0.0.0"

socksParentProxy = "127.0.0.1:1080"
socksProxyType = socks5

chunkHighMark = 50331648
objectHighMark = 16384

serverMaxSlots = 64
serverSlots = 16
serverSlots1 = 32" > /etc/polipo/config



CLOUD_MUSIC=~/Downloads/cloudmusic.deb
wget http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0-2_amd64_ubuntu16.04.deb -O $CLOUD_MUSIC
sudo dpkg -i $CLOUD_MUSIC
sudo apt-get -f -y install 
sudo dpkg -i $CLOUD_MUSIC
