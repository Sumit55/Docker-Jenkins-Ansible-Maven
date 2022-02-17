FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN mkdir /var/run/sshd

RUN useradd remote_user && \
  echo "remote_user:admin" | chpasswd && \
  mkdir ~/.ssh && \
  chmod 700 ~/.ssh

RUN touch ~/.ssh/authorized_keys

COPY remote-key.pub ~/.ssh/authorized_keys

RUN chown remote_user:remote_user -R ~/.ssh/ && \
  chmod 600 ~/.ssh/authorized_keys

RUN ssh-keygen -A

RUN apt install mysql-server sudo -y

RUN apt install curl sudo -y

RUN apt-get install python3-distutils sudo -y && \
  apt-get install python3-apt sudo -y

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
  python3 get-pip.py && \
  pip install awscli --upgrade

CMD /usr/sbin/sshd -D
