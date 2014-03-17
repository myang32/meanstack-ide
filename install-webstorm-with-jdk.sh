
# install Oracle JDK 7
sudo apt-get purge openjdk*
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update -y
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo /usr/bin/debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java7-installer
sudo apt-get install -y oracle-java7-set-default

wget http://download.jetbrains.com/webstorm/WebStorm_7.0.3.tar.gz
sudo tar xzf WebStorm_7.0.3.tar.gz -C /opt --owner=root

/opt/WebStorm-133.434/bin/webstorm.sh

