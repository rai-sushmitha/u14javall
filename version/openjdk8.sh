#!/bin/bash -e

echo "================ Installing openjdk-8-jdk ================="
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac
sudo add-apt-repository ppa:maarten-fonville/ppa
sudo apt-get update
sudo apt-get install icedtea-8-plugin
sudo update-alternatives --set javaws /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/jre/bin' >> $HOME/.bashrc
