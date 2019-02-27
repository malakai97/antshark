# On the target machine
apt-get install python ansible -y

# Do everything else
ansible-playbook playbook.workstation.yml --limit=hatchker

