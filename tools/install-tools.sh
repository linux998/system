#! /bin/bash
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo && yum clean all  &&  yum makecache && yum -y update
yum -y install  epel-release yum-utils
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum -y install  lrzsz unzip zip bash-completion java-1.8.0-openjdk.x86_64 net-tools.x86_64 docker-ce-19.03.5 docker-compose ansible openssh

