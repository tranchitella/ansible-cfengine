.PHONY: all
all:
	ansible-lint .
	ansible-playbook -i tests/inventory tests/playbook.yml --syntax-check
