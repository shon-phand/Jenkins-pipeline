FROM centos

RUN yum -y install openssh-server

    RUN useradd remote_user && \
        echo "remote_user:shon" | chpasswd && \
        mkdir /home/remote_user/.ssh && \
        chmod 700 /home/remote_user/.ssh
COPY remote-host.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN yum -y install mysql    

RUN ssh-keygen  -A

CMD /usr/sbin/sshd -D

