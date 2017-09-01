# 申请阿里云  
1. 注册、申请ECS（Centos7.3）  
2. 注册域名  
3. 绑定域名  

# 安装本地工具（windows）  
1. 安装XShell、Xftp  
2. 安装git  

# 初始化ECS  
1. 以root用户登录  
2. 创建用户  
> adduser -G root zhaolin  
> passwd zhaolin  
> vi /etc/sudoers # 找到root ALL=(ALL)..行，复制一行，把root改成zhaolin  
3. 安装git
> sudo yum install git  
> git config --global user.name zhaolin  
> git config --global user.email zhaolin@amath0312.tech  
> # test git environment
> git init  
> touch testfile  
> git add -A  
> git commit -m 'test git env'  
> git rm testfile  
> git add -A  
> git commit -m 'restore'  
4. 安装python3
> get download url from [official page](https://www.python.org/downloads/source/)  
> wget https://www.python.org/ftp/python/3.6.2/Python-3.6.2.tar.xz  
> 也可以下载好通过xftp上传到服务器  
> tar -xvf Python-3.6.2.tar.xz  
> sudo yum install zlib-devel openssl-devel # 不安装编译不了pip  
> cd Python-3.6.2  
> ./configure  
> make  
> sudo make install  
> python -c "import os;print(os.getcwd())"  


5. 安装Nginx
> sudo vim /etc/yum.repos.d/nginx.repo  
```
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1
```
> sudo yum install nginx  
> vim /etc/nginx/conf.d/default.conf # edit domain and port  
> 在aliyun控制台设置安全策略，入方向允许80端口  
> sudo nginx -s reload  
> 访问服务器成功  

6. 安装MySQL
> wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm  
> sudo rpm -Uvh mysql57-community-release-el7-11.noarch.rpm   
> sudo yum repolist all|grep mysql  
> sudo yum install mysql mysql-community-server  
> sudo service mysqld start  
find temporary password:  
> sudo grep 'temporary password' /var/log/mysqld.log  
> mysql -uroot -p  
> alter user root@localhost identified by 'NewPass4!';  
> create user 'zhaolin'@'%' identified by 'Kaka1234!';  
> grant all privileges on *.* to 'zhaolin'@'%';  
> flush privileges;  

7. 安装JDK  
> sudo yum search java|grep -i --color JDK  
> sudo yum install java-1.8.0-openjdk-devel.i686  
> ll /etc/alternatives/javac  
> #set JAVA_HOME  
> wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz  
> tar xzvf apache-maven-3.5.0-bin.tar.gz  
> mvn -v  
