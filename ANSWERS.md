## Prerequisites
- An AWS account with appropriate permissions to create IAM resources.
- Terraform, Git Bash, VS code editor installed on local machine in order to work on the code changes.
- AWS CLI installed in local machine to connect to the AWS account.

### Part A

## Approach

  s3 bucket and folders with read and write access as mentioned in the instructions file have been created in AWS account. Assume Terraform Role has been created as well.

  The existing modules does not support IAM group services and it did not faciliate to loop around the users list. Hence I decided to create separate module called iam-user-starter. Included PGP key and SSH Key for security purposes as mentioned in iam-user module.

  As more new starters going to be part of the team needs access, IAM group has been created with custom policies for accessing the files from s3 bucket folders.

  Created a new IAM group of users for Retail Shopping team.
  
  I have verified by logging into the AWS account as IAM user and tried accessing the S3 bucket folders for read and write access respectively.
  


### Part B

## Approach

  For adding two more users, I have included the usernames and userteamnames changes in the variables.tf file. Rest of the code works same for the two users as above.


### Part C

## Approach

EC2 instance with the tags mentioned has been created in the AWS account.

In order to give temporary access for one of the user from Retail Shopping team, have created custom EC2 policy and included in the group policies.

I have verified by starting and stopping the EC2 instance with the tags as well as another EC2 instance without tags.

