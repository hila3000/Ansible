This project deployes (Via Ansible Playbook) the following components-
* ELK (Kibana is protected by Nginx)
* Cerebro (Protected by Nginx)
* Filebeat that gathers logs and ships them to logstash
* journalbeat that gathers journald logs and ships them to logstash - Needs verification
* Mysql replication Master-Slave nodes - Needs fixing replication

In order for the playbook to deploy properly, please run install_prerequisits bash script first.

In order to run the playbook:  
ansible-playbook main.yaml -i inventory

Enjoy :)
