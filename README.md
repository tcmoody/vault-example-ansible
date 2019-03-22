1) Run consul_server playbook
EC2_INI_PATH=ec2-private.ini AWS_PROFILE='' ANSIBLE_SSH_ARGS="-F dynamic_ansible_ssh.cfg" ansible-playbook playbooks/consul_server.yml -i ec2.py

2) Run consul_agent playbook
EC2_INI_PATH=ec2-private.ini AWS_PROFILE='' ANSIBLE_SSH_ARGS="-F dynamic_ansible_ssh.cfg" ansible-playbook playbooks/consul_agent.yml -i ec2.py

3) Replace kms arn in vault.hcl file in the vault role
4) Run vault playbook
EC2_INI_PATH=ec2-private.ini AWS_PROFILE='' ANSIBLE_SSH_ARGS="-F dynamic_ansible_ssh.cfg" ansible-playbook playbooks/vault.yml -i ec2.py

5) vault init
6) Place root token from vault init in configure-backends playbook
7) Generate IAM creds, Place access key/secret access key in configure-backends playbook

8) Execute configure backends playbook
EC2_INI_PATH=ec2-private.ini AWS_PROFILE='' ANSIBLE_SSH_ARGS="-F dynamic_ansible_ssh.cfg" ansible-playbook playbooks/configure-backends.yml -i ec2.py



vault read aws/creds/ec2-read
