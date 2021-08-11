docker-machine create --driver generic --generic-ip-address=85.113.196.30 --generic-ssh-user yc-user --generic-ssh-key ~/.ssh/appuser docker-host

eval $(docker-machine env docker-host)

