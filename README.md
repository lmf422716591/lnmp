# lnmp
lnmp集成环境

# 使用Dockerfile构建方法：
    ## 1、拉取lnmp仓库： git clone https://github.com/quietdeng/lnmp.git
    ## 2、构建lnmp镜像：
        - 进入lnmp/php-fpm目录，运行： sh build.sh
    ## 3、修改项目路径和配置文件
        - 修改lnmp/lnmp-php-fpm.sh文件对应的项目目录为自己的项目目录
        - 修改lnmp/lnmp-nginx.sh文件对应的项目和配置所在目录为自己的目录
        - 修改配置文件lnmp/nginx/conf.d/xx.conf为对应的配置
    ## 4、运行容器
        - sh lnmp-php-fpm.sh
        - sh lnmp-nginx.sh
    ## 5、查看是否运行正常：curl localhost:8080/test.php

# 使用docker-compose编排：（有点问题待解决）
    ## 在lnmp目录下，执行：docker-compose up

    ## 未安装则先安装docker-compose：
    ## 查看pip版本： pip -v
    ## 上一条语句没有显示版本信息则运行下面语句安装 python-pip
        - yum -y install epel-release
        - yum -y install python-pip
    ## 查看pip版本： pip -v
    ## pip进行升级： pip install --upgrade pip
    ## 进行安装compose 第一条语句报错执行第二条，执行成功则跳过第二条
        - pip install docker-compose
        - pip install docker-compose --ignore-installed requests 
    ## 查看docker compose版本： docker-compose version