# Jenkins - terraform intergation

## How to use Jenkins for Terraform management:

Step 1: Install the Terraform plugin on Jenkins
Step 2: Install Terraform binary
Step 3: Prepare the Terraform configuration
step 4: Create a Jenkinsfile
Step 5: Create a new Jenkins Pipeline
Step 6: Configure access to AWS
Step 7: Test the Jenkins Pipeline
Step 8: Destroy the infrastructure using Jenkins


## Step 1: Install the Terraform plugin on Jenkins

### Once you have installed jenkins on your virtual server you have to authenticate to jenkins and open the Jenkins UI.
### After you have logged into jenkins you would install some plugins as seen below:
### Once the installation is complete and administrator login is enabled, click on “Manage Jenkins” in the left navigation menu. 

![screenshot of Jenkins-Dashboard](images/https://github.com/itzchioma/terraform-jenkins/blob/main/store-assets/Jenkins-Dashboard.png)

### Next, click on the “Manage Plugins” icon to install the Terraform plugin.

![Manage-Jenkins-Dashboard](images/Manage-Jenkins-Dashboard.png)

### Click on the “Available plugins” tab in the left navigation menu, and enter “Terraform” in the search bar.

![Jenkins-plugins](images/Jenkins-plugins.png)

### Mark the checkbox next to Terraform, and click on “Install without restart.
### Once the installation is successful, it is displayed on the progress screen, as shown below. We have the option to restart Jenkins after this step.

![Jenkins-plugins-installation-board](images/Jenkins-plugins-installation-board.png)

### We have successfully installed the Terraform plugin in Jenkins.

## Step 2: Install Terraform binary

### Before Jenkins can work with the Terraform plugin, we need to install the Terraform binary. 
### Navigate to “Dashboard > Manage Jenkins > Global Tool Configuration” page, and scroll to the Terraform section. 

![Jenkins-installation-tab](images/Jenkins-installation-tab.png)

## Step 3: Prepare the Terraform configuration

### We have a terraform script that would create an ec2 instance with in AWS. The terraform configuration is hosted in this respository.
![Terraform-config](images/Terraform-config.png)

## Step 4: Create a Jenkinsfile to build the jenkins pipeline

### we have a jenkinsfile in this respository that would enable you run any terraform script you have in.

## Step 5: Create a new Jenkins Pipeline