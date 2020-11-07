#基于nginx基础镜像运行（后于lnmp-php-fpm运行）
docker run --name lnmp-nginx -p 8080:80 \ #指定本机端口映射到容器端口
    -v /home/test/workspace/lnmp-master/nginx/conf.d:/etc/nginx/conf.d:ro \ #本地配置目录映射到docker容器的目录
    -v /home/test/workspace/lnmp-master/html/:/var/www/html/ \ #本地项目目录映射到docker容器的目录
    --link lnmp-php-fpm:lnmp-php-fpm -d \ #连接到php-fpm容器
    nginx #基于nginx基础镜像运行
