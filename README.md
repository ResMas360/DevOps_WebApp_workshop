# CI/CD using jenkins, docker and github

Jenkins is a powerful CI/CD orchestration tool that allows us to build pipelines that test our apps and builds them.

In this workshop, you will build a meme website. This site will evolve from showing static images to a random image. The application needs to change the image displayed everytime a user logs into the site.

The application architecture uses [Jenkins](https://jenkins.io/), [docker](https://www.docker.com/), [ansible](https://www.ansible.com/) and [vagrant](https://www.vagrantup.com/). You will build the needed infrastructure that hosts our project website. The  configuration will be done through roles while the apps will be hosted on containers.  

See the diagram below for a depiction of the complete architecture.


<img src="0505_RunProject/images/architecturediagram.png" width="100%">

## Prerequisites

You will need to deactivate the HYPER-V off from the "Windows Features" window and activate the virtualization technology (AMD-v or VT-x). This can be done from the BIOS but is beyond the scope of this workhop.

### VirtualBox

In order to complete this workshop you'll need to install VirtualBox 5.2.4
VirtualBox is a general-purpose full virtualizer for x86 hardware, targeted at server, desktop and embedded use.
This will allow us to create Virtual Machines on our host machine
 an AWS Account with sufficient permission to create AWS IAM, Amazon Lex, Amazon Connect, Lambda, DynamoDB and CloudFormation resources. The code and instructions in this workshop assume only one student is using a given AWS account at a time. If you try sharing an account with another student, you'll run into naming conflicts for certain resources. You can work around these by appending a unique suffix to the resources that fail to create due to conflicts, but the instructions do not provide details on the changes required to make this work.

### vagrant

 After VirtualBox has been installed we need to install vagrant 2.0.2.
 Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time, increases production parity, and makes the "works on my machine" excuse a relic of the past.

## Modules

This workshop is broken up into multiple modules. For building out your website, you must complete the following modules in order before proceeding to the next:

1. [Build the infrastructure using vagrant](01_SetupVagrant)
1. [Enabling passwordless SSH on our infrastructure](02_PasswordlessSSH)
1. [Add the SSH key to Github](03_AddGithubKey)
1. [Configure Jenkins](04_ConfigureJenkins)
1. [Run project](05_RunProject)
