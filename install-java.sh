#!/bin/sh
 
sudo apt-get -y update && \
sudo apt-get install --no-install-recommends -y openjdk-8-jre-headless ca-certificates-java
 
#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#bash Miniconda3-latest-Linux-x86_64.sh -b -p /usr/local/miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
bash Miniconda3-latest-Linux-aarch64.sh -b -p /usr/local/miniconda
 
sudo /usr/local/miniconda/bin/conda create -n bigdata python=3.8 -y
sudo /usr/local/miniconda/bin/conda activate bigdata
sudo /usr/local/miniconda/bin/conda install -y jupyterlab
sudo /usr/local/miniconda/bin/conda install -y pyspark
sudo /usr/local/miniconda/bin/conda install -c conda-forge -y findspark
sudo /usr/local/miniconda/bin/conda install -c conda-forge -y kafka-python
sudo /usr/local/miniconda/bin/conda install -c conda-forge -y sseclient
sudo /usr/local/miniconda/bin/conda install -c anaconda -y seaborn

sudo chmod -R 777 /usr/local/miniconda/

sudo cp /vagrant/myenvvars.sh /etc/profile.d/myenvvars.sh

