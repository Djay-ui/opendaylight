---------------------------------SDN IN DEBIAN --------------------------


###https://john.soban.ski/install-opendaylight-ubuntu-lts-fast.html, --no-check-certificate

sudo apt-get -y update

sudo apt-get -y upgrade

sudo apt-get -y install unzip curl wget ca-certificates

apt-get update

apt-get install software-properties-common

apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
apt-get update

sudo update-alternatives --config java

ls -l /etc/alternatives/java

echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre' >> ~/.bashrc

source ~/.bashrc

echo $JAVA_HOME

curl -XGET -O https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/karaf/0.8.4/karaf-0.8.4.zip

unzip karaf-0.8.4.zip

cd karaf-0.8.4/

./bin/karaf

feature:install odl-l2switch-switch-ui

feature:list

