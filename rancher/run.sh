docker run --privileged -d --restart=unless-stopped \
	-p 80:80 -p 443:443 \
       	-v /root/docker/rancher:/var/lib/rancher/ \
	rancher/rancher:stable
