# dlevikov_microservices
dlevikov microservices repository
https://hub.docker.com/u/dlevikov

yc compute instance create --name docker-host --zone ru-central1-a --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 --ssh-key ~/.ssh/appuser.pub

yc compute instance delete --name docker-host

docker-machine create --driver generic --generic-ip-address=85.113.196.30 --generic-ssh-user yc-user --generic-ssh-key ~/.ssh/appuser docker-host

eval $(docker-machine env docker-host)

docker-machine ls
docker-machine ip docker-host
docker-machine rm -f docker-host
