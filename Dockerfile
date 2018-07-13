############################################################
# Dockerfile to build a saltcheck testing environment
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:16.04

# SaltStack version
ENV SALT_VERSION=2017.7.5

# File Author / Maintainer
LABEL maintainer="William Cannon"

################## BEGIN INSTALLATION ######################
# Install salt-minion
# Ref: https://repo.saltstack.com/#ubuntu 
############################################################
RUN apt-get update && apt-get install -y wget sudo python-pip vim-nox

# Upgrade pip to latest version
RUN pip install --upgrade pip

# Add salt repo key
RUN wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/archive/${SALT_VERSION}/SALTSTACK-GPG-KEY.pub | apt-key add -

# Add salt repo into apt sources
RUN echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/archive/${SALT_VERSION} xenial main" > /etc/apt/sources.list.d/saltstack.list

# Update the repository sources list once more and install salt-minion
RUN apt-get update && apt-get install -y salt-minion

################## END INSTALLATION ######################
