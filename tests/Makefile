.PHONY: all
all:
	vagrant up
	ansible-playbook -i inventory playbook.yml

destroy:
	vagrant destroy -f
