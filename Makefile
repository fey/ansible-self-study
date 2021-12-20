start:
	vagrant up

ssh-web1:
	# NOTE: StrictHostKeyChecking=no только для виртуальных серверов (они могут пересоздаваться)
	ssh -o "StrictHostKeyChecking=no" vagrant@192.168.33.10

ssh-web2:
	# NOTE: StrictHostKeyChecking=no только для виртуальных серверов (они могут пересоздаваться)
	ssh -o "StrictHostKeyChecking=no" vagrant@192.168.33.11

ping-webservers:
	ansible -i inventory.ini webservers -m ping
