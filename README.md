# uber_clone
Jenkins Driven: CI/CD for Uber Clone with Monitoring Excellence

### Technologies Used in This Project:

Explore the key components contributing to the seamless integration and continuous delivery of your Uber Clone application:

**  Jenkins:** 

- Automates your workflow, ensuring a smooth integration pipeline and facilitating continuous delivery.

**Terraform:** 

- The infrastructure magician that effortlessly conjures up AWS resources for your Uber Clone environment.

**Docker:** 

- Wraps up your Uber Clone app into containers, ensuring consistency and portability across environments.

**Kubernetes:** 

- Manages Docker containers, enhancing scalability and reliability for your Uber Clone application.

**Grafana:** 

- Empowers you to visualize and monitor the performance of your Uber Clone application.

**Prometheus:** 

- Acts as a vigilant guardian, collecting and analyzing metrics to safeguard application health.



Step-by-Step Guide:
###  Launch an Ubuntu instance (T2.large):

- Sign in to AWS Console. Navigate to EC2 Dashboard.
- Launch an instance with Ubuntu AMI, type t2.large, configure details, add tags, configure security group, and review before launching.

![Screenshot (266)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/d2548fd6-93cf-48ff-bb94-e9438b7e589a)

###  Create IAM role:

Look for IAM in the AWS search bar and select "Roles."
- Create a role for EC2, choose Administrator Access, name the role, and create it.
Attach the created role to the EC2 instance.

###  Installations of Packages:

- Create and run shell scripts on the Ubuntu EC2 instance to install Jenkins, Docker, Trivy, Terraform, kubectl, AWS CLI, and Helm.

![Screenshot (271)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/781d8ebb-2a8b-4cbf-86f5-0d1e080fe930)

###  Connect to Jenkins and Sonarqube:

- Access Jenkins on port 8080 and Sonarqube on port 9000 using the EC2 instance's public IP.
- Install Jenkins, configure, and establish an administrative user account.
- Generate a token in Sonarqube and configure credentials in Jenkins.

###  Terraform plugin install and EKS provision:

- Install Terraform plugin in Jenkins.
- Configure Terraform in Global Tool Configuration.
- Modify S3 bucket name in backend.tf file.
- Create a Jenkins task for provisioning EKS.

![Screenshot (276)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/ad5754c9-f6db-402d-b803-7ab38956e6f1)

###  Plugins installation & setup (Java, Sonar, Nodejs, owasp, Docker):

- Install various plugins in Jenkins for Eclipse Temurin, SonarQube, Node.js, OWASP, and Docker.

###  Configure in Global Tool Configuration:

- Configure Java, NodeJs, SonarQube, and Docker in Global Tool Configuration.

###  Configure Sonar Server in Manage Jenkins:

- Retrieve the public IP address of the EC2 instance for Sonarqube.
- Generate a token in Sonarqube and configure it in Jenkins.

###  Pipeline up to Docker:

- Create a Jenkins pipeline job for the application, integrating Sonarqube, OWASP, and Docker.

![Screenshot (277)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/c7c92ac8-e8cd-4533-ab74-6cc0d1b76378)

###  Kubernetes Deployment:

- Configure AWS EKS in Jenkins.
- Create a Kubernetes secret file and configure Kubernetes plugin in Jenkins.
- Implement a pipeline for deploying to the Kubernetes cluster.

![Screenshot (278)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/8dc79251-7560-4973-878d-75fc8483b41b)

###  Grafana and Prometheus Integration:

- Install Grafana and Prometheus on the Kubernetes cluster.
- Create a Grafana dashboard for monitoring.

![Screenshot (282)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/8a91afc9-f67c-4382-8330-5907cf65dee1)



###  Output of the Uber clone app

![Screenshot (280)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/a2edaa29-afe9-4a57-815d-9b36152b57bd)

![Screenshot (287)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/4b7a6873-553e-4138-8c31-d471097bc226)


![Screenshot (283)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/6ef29906-3c1b-49cd-84ba-b33f22e9f459)


![Screenshot (285)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/dc74b959-3d65-4837-b8c5-d0a5a044cc95)

###  Destroying EKS cluster after done with the project.

![Screenshot (286)](https://github.com/sunilkurthakoti/uber_clone/assets/131526336/0b4755c4-8139-4138-bfad-f60074382fc5)
