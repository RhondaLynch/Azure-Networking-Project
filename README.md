# Azure-Networking-Project
Using Elk-stack, Ansible, Docker &amp; DVWA
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Flowchart](https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Diagrams/Azure%20Flowchart.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/install_elk.yml.jpg" target="_top">install_elk.yml</a> file may be used to install only certain pieces of it, such as Filebeat.
  

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing not only ensures that the application will be highly available, but also that incoming traffic flowing to the webservers is restricted to the project owner's Public IP via HTTP port 80. Likewise the Jump-Box is used as the sole ssh gateway into the network via port 22, limited, in this case, to the project owner's public IP.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs, as well as system and application metrics.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway    | 10.0.0.5 | Linux            |
| Web-1    | Web Server | 10.0.0.6 | Linux            |
| Web-2    | Web Server | 10.0.0.7 | Linux            |
| Web-3    | Web Server | 10.0.0.8 | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box machine can accept ssh connections via port 22 from the Internet. Access to this machine is only allowed from the following IP addresses: 172.88.124.110

Machines within the network can only be accessed by the Jump-Box Provisioner (Public IP:52.160.125.3 Private IP:10.0.0.5) .

A summary of the access policies in place can be found in the table below.

| Name               | Publicly Accessible | Allowed IP Addresses |
|--------------------|---------------------|----------------------|
| Jump Box           | Yes (ssh p22)       | 172.88.124.110       |
| Elk Server (Web-A) | Yes (tcp p5601)     | 172.88.124.110       |
| Load Balancer      | Yes (http p80)      | 172.88.124.110       |
| Web-1              | No                  | 10.0.0.5             |
| Web-2              | No                  | 10.0.0.5             |
| Web-3              | No                  | 10.0.0.5             |



### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because any number number of webservers can be done by one script.  This also allows easy update should more webservers be added in the future.

The playbook implements the following tasks:
- Install Docker.io
- Install python3-pip
- Create, image and launch a docker container
- Assign ports to the docker container
- Enable Docker

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![docker-ps](https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/docker-ps.jpg)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.0.6
- Web-2 10.0.0.7
- Web-3 10.0.0.8

We have installed the following Beats on these machines:
- <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/filebeat-playbook.yml.jpg" target="_top">Filebeat</a>
- <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/metricbeat-playbook.yml.jpg" target="_top">Metricbeat</a>

These Beats allow us to collect the following information from each machine:
- Filebeat: Filebeat is a customizable vehicle for forwarding and centralizing log events to tools such as Elasticsearch or Logstash for indexing and manipulation to be visually displayed in tools such as Kibana
- Metricbeat: Metricbeat monitors and accumulates system information such as CPU usage, memory, file system etc., and forwards the data to tools such as Elasticsearch or Logstash for further manipulation and anlysis.  This information can then be visualized via tools such as Kibana.    

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/filebeat-playbook.yml.jpg" target="_top">Filebeat yml file</a> and <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/metricbeat-playbook.yml.jpg" target="_top">Metricbeat yml file</a> to /etc/ansible/roles within the container.
- Update the /etc/ansible/hosts file to include the <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/hosts.jpg" target="_top">webservers and elk server</a>
- Navigate to the <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/filebeat-config.yml.jpg" target="_top">Filebeat-config.yml</a> and <a href="https://github.com/RhondaLynch/Azure-Networking-Project/blob/main/Ansible/metricbeat-config.yml.jpg" target="_top">Metricbeat-config.yml</a> files in /etc/ansible within the container
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| TODO     |          |            |                  |
| TODO     |          |            |                  |
| TODO     |          |            |                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by _____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
