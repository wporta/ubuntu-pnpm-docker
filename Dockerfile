FROM ubuntu:22.04

USER root

# Update the box
RUN apt-get update && apt-get upgrade -y

# Installing curl, git, sudo and openssh-server
RUN apt-get install -y curl openssh-server sudo git

# Installing Node.JS
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Installing pnpm
RUN npm install -g pnpm

# Installing JDK 17
RUN apt-get install -y openjdk-17-jdk

# Creating user jenkins with password jenkins
RUN useradd -m jenkins -p jenkins

USER jenkins