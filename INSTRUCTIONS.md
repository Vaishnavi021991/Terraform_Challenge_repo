### Part A

John from retail Shopping has reached out to TechOps Team with the following request: 

```
Hello, 

I have a new starter in the retail Shopping marketing team. Please find details of the new starter below: 

Name: Jane Doe
Email: jane.doe@retail.com
Team: Marketing

She needs access to `sho-prd-product-inventory` s3 bucket. She requires read access on `offers` folder and write access to the `electronics` & `home-appliances` folder in the above mentioned bucket. 

Please note that we have more new starters in marketing team who need the same access, I'll send out their details in the next couple of days. 

Thanks,

John
```

Help John by creating the requested access in the above specified AWS Account(Account#: 1234567890). To help you with this task TechOps team has already created the `iam_user` terraform module.  

> **_NOTE:_**  It is not mandatory to use the modules in this repo. You can choose any approach to solve this problem but explain why you choose this approach in [ANSWERS.md](ANSWERS.md).
> Please assume that the `assumed-terraform` role is available and configured correctly in the above mentioned AWS Account.
> You don't need to update the `terraform_assume_role` variable, please use the default value. 

Once you have completed this commit your change and then move on to the next part below.

### Part B

John has another request for the TechOps Team.

```
Hello, 

Thanks you setting Jane up with here her access, as mentioned earlier please find the details of the new starters below: 

Name: Brian Cox
Email: brian.cox@retail.com
Team: Operations

Name: Pooja Sharma
Email: pooja.sharma@retail.com
Team: Marketing

They need the same access as Jane. 

Thanks,
John
```

Can you help John to onboard two new staff? 

Once you have completed this commit your change and then move on to the next part below.

### Part C

Adam, your team lead reached out to you with another urgent request. In order to support a urgent P1 incident, Brian also needs access to start and stop the EC2 servers. 

```
Hey, 

I'm sorry about the last minute request, retail Shopping team is currently investigating an P1 incident in production. I have agreed to give Brian Temporay access to start and stop the EC2 server.

Please note that he only need access to the server tagged with the following values: 

|| Tag Name || Tag Value ||
| Type | back-office |
| Env | prd |

Also this is just a temporary access, he needs this for only 3 days starting today. Please find brian's details below:

Name: Brian Cox
Email: brian.cox@retail.com
Team: Operations


Thanks,
Adam
```

Can you modify Brian's access so that he can manage the lifecycle of above mentioned EC2 instance? Ensure that the access is only temporary. 

Make your changes and then commit them.

This is the end of the test.  Push your changes to the origin.

You can now inform your recruiter that you have finished the test.
