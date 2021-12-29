docker rm mysql

docker run --name mysql \
	-e MYSQL_ROOT_PASSWORD=denglt \
	-v /root/docker/mysql/logs:/opt/bitnami/mysql/logs \
	-v /root/onGithub/dockerStudy/mysql/conf:/opt/bitnami/mysql/conf \
	-v /root/docker/mysql/data:/bitnami/mysql/data  \
	bitnami/mysql:5.7.36-debian-10-r16

:<<!
NOTE: As this is a non-root container, the mounted files and directories must have the proper permissions for the UID 1001.
注意：需要 /root/docker/mysql/data  设置文件夹 chown 1001:1001
      在wsl环境中，最好不要在docker中mount(即-v) wls从window mount过来的文件（因为 wls从window mount过来的文件无法chown，会有权限错误发生）  
docker run --name mysql \
        -e MYSQL_ROOT_PASSWORD=denglt \
        -v /root/onGithub/dockerStudy/mysql/logs:/opt/bitnami/mysql/logs \
        -v /root/onGithub/dockerStudy/mysql/my.cnf:/opt/bitnami/mysql/conf/my.cnf \
        -v /root/onGithub/dockerStudy/mysql/data/:/bitnami/mysql/data  \
        -it --entrypoint /bin/bash \
        bitnami/mysql:5.7.36-debian-10-r16
!
