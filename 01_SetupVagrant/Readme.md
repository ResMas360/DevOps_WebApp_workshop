# Module 1: Build the infrastructure

In this module you will build the infrastructure that will host the website.

At completion of this module you will be able to log on to the virtual machines and check that necessary software has been installed.

##  Vagrant
The first thing that needs to be done, is to create the two virtual machines that will hot the project. We will use Vagrant for this.
In the folder you will find a file called **"Vagrantfile"** which tells vagrant details such as network information, the type of images we need and how to provision the virtual machines at boot time.

## Creating the virtual machines

To create the virtual machines open gitbash and type **"vagrant up"**. This will start the machines and provision them.
The files used to provision each machine are **configure_ops_machine.sh** and **configure_prod_machine.sh**, both files are SHELL scripts that will install Ansible and playbooks.

After the machines have been created, check their status with the **"vagrant status"** command.

### What has happened so far?

**Vagrant** is a great tool that helps us create virtual machines in a couple of minutes, it also helps resolve typical "silo" issues such as "It works on my computer" by providing teams with machines that resemble those in production environments.

**Ansible** was used to configure our infrastructure. This is an agentless tool that connects to the target machines to perform "tasks" which are independent of the host's OS. The same task will work on linux, windows, MacOS and other devices such as Cisco hardware.

You can see what tasks were performed in the machines by checking the **main.yml** located on **Roles > dockerworkshop > tasks** and **Roles > prod_docker > tasks**


1. Virtual Machines were created with CentOS 7 images.
1. Ansible was used to provision docker and create the users that will be used in this project.

### Next module


After you have verified that both virtual machines are up and running, move onto the next module: [Enable passwordless SSH between boxes](../02_PasswordlessSSH)
