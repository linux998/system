#! /bin/bash
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && yum clean all  &&  yum makecache && yum -y update
yum -y install  epel-release yum-utils
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum -y remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine >/dev/null 2>&1
yum -y install  lrzsz unzip zip bash-completion java-1.8.0-openjdk.x86_64 net-tools.x86_64 docker-ce-19.03.5 docker-compose ansible openssh tree pstree
chkconfig docker on
cp -r /system/tools/lanproxy /opt/ && echo -e "/opt/lanproxy/bin/startup.sh">>/etc/rc.d/rc.local && chmod +x /etc/rc.d/rc.local && sh /opt/lanproxy/bin/startup.sh
