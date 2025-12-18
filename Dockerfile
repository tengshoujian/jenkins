# 使用Ubuntu 22.04 LTS作为基础镜像
FROM centos:7

RUN rm -rf /etc/yum.repos.d/*.repo && \
    curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo && \
    yum clean all && \
    yum makecache

# 更新包列表并安装SSH服务
RUN yum -y  install openssh-server

RUN useradd remote_user && \
    echo '1234' | passwd remote_user --stdin  && \
    mkdir -p /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

# 修正文件名拼写（CentOS原版为authorized.keys）
COPY remote_key.pub /home/remote_user/.ssh/authorized_keys
# 设置文件权限
RUN chown remote_user:remote_user -R  /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D



