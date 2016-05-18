echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
#apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt-get -y install i3
add-apt-repository ppa:noobslab/macbuntu
apt-get update
apt-get -y install macbuntu-os-icons-lts-v7
apt-get -y install macbuntu-os-ithemes-lts-v7
apt-get -y install lxappearance
echo "mounting Data"
mkdir /media/Data
cd /etc/
sudo sed -i -e '$i \sudo mount /dev/sda7 /media/Data \n' rc.local
echo "installing vim"
apt-get -y install vim
echo "installing nmap"
apt-get -y install nmap
echo "installing java"
apt-get -y install openjdk-8-jre
"installing git"
apt-get -y install git
"installing pycharm"
cd
tar xvzf Downloads/pycharm-professional* -C /usr/local/
mv /usr/local/pycharm* /usr/local/pycharm
tar xvzf Downloads/WebStorm* -C /usr/local/
mv /usr/local/WebStorm* /usr/local/webstorm
#touchpad settings
synclient HorizTwoFingerScroll=1
synclient PalmDetect=1
#sound settings 
amixer -D pulse sset Master 60%
#install docker
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee docker.list
apt-get install linux-image-extra-$(uname -r)
apt-get install -y docker-engine
apt-get install -y python-pip
pip install --upgrade pip
pip install docker-compose
chmod 770 /usr/local/bin/docker-compose

