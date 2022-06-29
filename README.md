CI/CD pipeline for an app, design implement Continuous Integration and Continuous Deployment pipelines.

Complete pipeline from code push to github to deploying the built and tested code into the required server.

Steps:
1.Building infrastructure using terraform.

2.Installing ansible and creating hosts and obtaining an ssh connection.

3.Create a playbook(play.yml) to install java and jenkins on master machine and java on slaves.

4.Open jenkins and create a freestyle project for github webook( to trigger build whenever the code is pushed into github) and clone it into server if the build is successful. Create a pipeline with the 2 jobs(2 projects for test server and dev server deployment).

5.Also can containerize by adding a docker file and executing it in jenkins.
