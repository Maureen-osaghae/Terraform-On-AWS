<h1>Import an existing Amazon S3 Bucket - Challenge</h1>
Once you start using Terraform in a real environment, you will inevitably come across resources that were created manually in the AWS account and that need to be transferred over to IaC for management. Understanding how to import those resources into Terraform will save you countless hours. Practice what you've learned about the two options for importing resources with this lab environment that pre-deploys an Amazon S3 bucket.

<h1>Scenario 👨‍🔬</h1>
For our scenario, let’s pretend that you’ve already completed this course, and you go to your team to tell them you need to start using Terraform and IaC to manage all of your infrastructure in AWS accounts. You decide to start with one of the easiest accounts that has the fewest resources. That account has an Amazon S3 bucket that was manually created. You’d like to start by importing that resource.

It’s imperative that you not change any of the bucket’s existing settings/configurations! You are only importing the existing resource, not applying any changes to that bucket.

    aws configure
first we list our buckets
    
    aws s3api list-buckets

  <img width="591" height="228" alt="image" src="https://github.com/user-attachments/assets/f3837241-9316-45b6-a876-2d55a1bd83e6" />

  run the 
  
    terraform init command 

    <img width="685" height="250" alt="image" src="https://github.com/user-attachments/assets/3f4f6b24-a907-4212-909d-77f649fbdef5" />

    terraform validate
    
  <img width="860" height="335" alt="image" src="https://github.com/user-attachments/assets/3bcf1b45-9d01-4b79-9210-d2e36094b00c" />

    terraform apply

<img width="875" height="199" alt="image" src="https://github.com/user-attachments/assets/3612a9f9-65b8-4f8d-82d6-33a7068a4394" />

Follow that up with a 

    terraform state list. 

We should see aws_s3_bucket.bucket_to_import

<img width="655" height="109" alt="image" src="https://github.com/user-attachments/assets/ad34007f-f3e6-439c-b90a-4a2ec9456e63" />

Update the main.tf file resource block with the bucket name

<img width="959" height="254" alt="image" src="https://github.com/user-attachments/assets/d442e291-a649-43f5-9b42-83b6a9695eec" />

    Terraform plan

<img width="740" height="262" alt="image" src="https://github.com/user-attachments/assets/ebabd43e-7795-41d6-8c10-f599ae488160" />

We have succefully imported the s3 buckets resources

 Lets tear down the resources

     terraform destroy

<img width="959" height="478" alt="image" src="https://github.com/user-attachments/assets/7fdf0cd0-59d7-4995-a3b1-bab7cf9480db" />

<img width="776" height="56" alt="image" src="https://github.com/user-attachments/assets/369dddbd-a88b-4a05-897d-0a873987c32f" />


     



