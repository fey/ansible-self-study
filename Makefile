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

play-playbook-main:
	ansible-playbook -i inventory.ini main.yml

play-playbook-nginx:
	ansible-playbook -i inventory.ini nginx.yml

play-playbook-git:
	ansible-playbook -i inventory.ini setup_git.yml

play-playbook-remove-git:
	ansible-playbook -i inventory.ini remove_git.yml

show-webservers-setup:
	ansible -i inventory.ini webservers -m setup
