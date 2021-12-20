start:
	vagrant up

ssh-web1:
	make ssh-webserver IP=192.168.33.10

ssh-web2:
	make ssh-webserver IP=192.168.33.11


ssh-webserver:
	@# NOTE: StrictHostKeyChecking=no только для виртуальных серверов (они могут пересоздаваться)
	ssh -o "StrictHostKeyChecking=no" vagrant@$(IP)

ping-webservers:
	ansible -i inventory.ini webservers -m ping

ping-localhost:
	ansible -i localhost.ini all -m ping
