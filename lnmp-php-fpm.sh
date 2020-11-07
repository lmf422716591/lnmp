#基于lnmp/php-fpm镜像运行容器
docker run --name lnmp-php-fpm -p 9000:9000 -d \
    -v /home/test/workspace/lnmp-master/html/:/var/www/html \
    lnmp/php-fpm
