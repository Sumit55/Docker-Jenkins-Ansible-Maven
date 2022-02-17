FROM jenkins/jenkins

USER root

RUN apt install curl

RUN apt-get update

RUN apt-get install python3 sudo -y

RUN apt-get install python3-distutils sudo -y && \
  apt-get install python3-apt sudo -y

RUN apt-get install sshpass

RUN python3 --version

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
  python3 get-pip.py && \
  pip install ansible --upgrade

USER jenkins

