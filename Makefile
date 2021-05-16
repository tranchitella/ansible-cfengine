.PHONY: all
all:
	ansible-lint .
	ansible-playbook -i tests/inventory tests/test.yml --syntax-check
