CI/CD pipeline for an app, design implement Continuous Integration and Continuous Deployment pipelines.

Complete pipeline from code push to github to deploying the built and tested code into the required server.

Steps:

1.Build 2 servers, namely master and slave using terraform.(Refer project#1 on my profile)

2.Installing ansible on master 
-	$ sudo apt update
-	$ sudo apt install software-properties-common
-	$ sudo add-apt-repository --yes --update ppa:ansible/ansible
-	$ sudo apt install ansible

 3.Create hosts to obtaining an ssh connection between master and slave.
-	On master enter the command $ssh-keygen and keep pressing enter until the process ends.
-	Enter command $ sudo cat ./.ssh/id_rsa.pub and copy the public key that is printed.
-	On slave server run the command $ sudo nano ./.ssh/authorized_keys and paste the copied public key from master on the second line and save and exit the file. The ssh connection between the master and slave is now established and can verify it by doing ssh into slave from master.
  
  4.Creating the hosts file in the master.
-	Go to the host file location using the command $ sudo nano /etc/ansible/hosts 
-	Inside the file add your slave/slaves in the last line of file with the following command 
[slaves]                                                                               ------------(group_name)
slave1 ansible_host=<slave-ip-address>                     ------------(servers in the group)
-	can verify it by using command $ ansible -m ping all 

 5.Create a playbook(play.yml) to install java and jenkins on master machine and java on slaves.
-	Create a folder named ansible 
-	Create a play.yml(PFA) file inside the folder
-	Edit the file as the attached code and save and exit
-	Create 2 script files master.sh and slave.sh(PFA)
-	Run the playbook using $ ansible-playbook play.yml

 6.Open the master ip adress which has jenkins installed in it and set up the jenkins tool.

 7.Add slave(node) to the master by using ssh(using private key of master) or connecting it by the controller method(JNLP method).

 8.Create a new freestyle project by adding adding SCM as Git and adding repository URL.

 9.Add slave(node) in "Restrict where this project can be run" section to clone the git repo to the slave. 

 10.Got to github and add a webhook with the master ip address. Come back to jenkins and in build triggers section add "Github hook trigger for GITSCM Polling" so that whenever the code is pushed to the git the job is built automatically.

 11. Save the project 

