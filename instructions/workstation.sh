add-apt-repository ppa:ansible/ansible -y
apt update
apt install ansible -y
ansible-galaxy install -r requirements.txt
ansible-playbook playbook.workstation.yml --limit=$1 -i ./hosts

