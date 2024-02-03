# uber_clone
Jenkins Driven: CI/CD for Uber Clone with Monitoring Excellence




**Technologies Used in This Project:**

Explore the key components contributing to the seamless integration and continuous delivery of your Uber Clone application:

**Jenkins:** 

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
### Step 1: Launch an Ubuntu instance (T2.large):

- Sign in to AWS Console. Navigate to EC2 Dashboard.
- Launch an instance with Ubuntu AMI, type t2.large, configure details, add tags, configure security group, and review before launching.

### Step 2: Create IAM role:

Look for IAM in the AWS search bar and select "Roles."
- Create a role for EC2, choose Administrator Access, name the role, and create it.
Attach the created role to the EC2 instance.

### Step 3: Installations of Packages:

- Create and run shell scripts on the Ubuntu EC2 instance to install Jenkins, Docker, Trivy, Terraform, kubectl, AWS CLI, and Helm.

### Step 4: Connect to Jenkins and Sonarqube:

- Access Jenkins on port 8080 and Sonarqube on port 9000 using the EC2 instance's public IP.
- Install Jenkins, configure, and establish an administrative user account.
- Generate a token in Sonarqube and configure credentials in Jenkins.

### Step 5: Terraform plugin install and EKS provision:

- Install Terraform plugin in Jenkins.
- Configure Terraform in Global Tool Configuration.
- Modify S3 bucket name in backend.tf file.
- Create a Jenkins task for provisioning EKS.

### Step 6: Plugins installation & setup (Java, Sonar, Nodejs, owasp, Docker):

- Install various plugins in Jenkins for Eclipse Temurin, SonarQube, Node.js, OWASP, and Docker.

### Step 7: Configure in Global Tool Configuration:

- Configure Java, NodeJs, SonarQube, and Docker in Global Tool Configuration.

### Step 8: Configure Sonar Server in Manage Jenkins:

- Retrieve the public IP address of the EC2 instance for Sonarqube.
- Generate a token in Sonarqube and configure it in Jenkins.

### Step 9: Pipeline up to Docker:

- Create a Jenkins pipeline job for the application, integrating Sonarqube, OWASP, and Docker.

### Step 10: Kubernetes Deployment:

- Configure AWS EKS in Jenkins.
- Create a Kubernetes secret file and configure Kubernetes plugin in Jenkins.
- Implement a pipeline for deploying to the Kubernetes cluster.

### Step 11: Grafana and Prometheus Integration:

- Install Grafana and Prometheus on the Kubernetes cluster.
- Create a Grafana dashboard for monitoring.

### Step 12: Destroy EKS cluster when you're done with the project.
