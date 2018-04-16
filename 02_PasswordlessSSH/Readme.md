# Module 2: Setting up passwordless SSH connection between boxes

In this module you will work with SSH keys that will allow the user "jenkins" perform commands on remote boxes and also wrok with Github to clone projects and build our website via a CI/CD pipeline.

At completion of this module you will be able to perform commands on remote boxes.

##  SSH keys
Secure Shell (better known as SSH) is a cryptographic network protocol which allows users to securely perform a number of network services over an unsecured network. SSH keys provide a more secure way of logging into a server with SSH than using a password alone. While a password can eventually be cracked with a brute force attack, SSH keys are nearly impossible to decipher by brute force alone.

Generating a key pair provides you with two long string of characters: a public and a private key. You can place the public key on any server, and then unlock it by connecting to it with a client that already has the private key. When the two match up, the system unlocks without the need for a password. You can increase security even more by protecting the private key with a passphrase.

The SSH keys have already been created as part of the Ansible tasks.  

## Implementation Instructions

1. Log on to the prod machine by typing **"vagrant ssh prod"**

1. Switch to the **root** user with **"sudo su"**

1. Change the password for the user jenkins with **"passwd jenkins"**, for this demo we will use a simple password such as "123456".

1. **"exit"** the "prod" box and log on to the "ops" machine with **"vagrant ssh ops"**.

1. On the prod machine, switch to the **root** user with **"sudo su"**

1. Change the password for the user jenkins with **"passwd jenkins"**, for this demo we will use a simple password such as "123456".

1. Switch to the jenkins user with **"su - jenkins"** to complete the following steps.
Note: It is normal for the password to be requested on each step.

1. Create the **.ssh** folder on the prod box (192.168.1.3) with **"ssh jenkins@192.168.1.3 mkdir -p /home/jenkins/.ssh"**.

1. Copy the **id_rsa.pub** public key on the "prod" box with
 **" cat /home/jenkins/.ssh/id_rsa.pub | ssh jenkins@192.168.1.3 'cat >> /home/jenkins/.ssh/authorized_keys' "**.

 1. Change the permissions on the previously created remote folders with:
 **ssh jenkins@192.168.1.3 "chmod 700 /home/jenkins/.ssh; chmod 640 /home/jenkins/.ssh/authorized_keys"**

1. Review that the user "jenkins" can now run passwordless remote commands with **"ssh jenkins@192.168.1.3 hostname"**

### Next module


After you have verified that jenkins can run passwordless commands, move onto the next module: [Add SSH key to Github](../03_AddGithubKey)
