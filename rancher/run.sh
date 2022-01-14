docker stop rancher
docker rm rancher
docker run --name rancher --privileged -d --restart=unless-stopped \
	-p 80:80 -p 443:443 \
       	-v /root/docker/rancher:/var/lib/rancher/ \
	rancher/rancher:stable
