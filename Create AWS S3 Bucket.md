Create Aws S3 Bucket

    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "6.7.0"
        }
      }
    }
    
    provider "aws" {
         
            region = us-east-1
    }
    
    resource "aws_s3_bucket" "example" {
      bucket = "maureen-osaghae-2222"
    
      tags = {
        Name        = "Demo-S3 Bucket"
        Environment = "Dev"
      }
    }

<h2>Terraform Validate</h2>
terraform validate – (Optional) This will verify the syntax of the code is correct e.g., verifying that required values are present. This requires terraform init to be run first, so you would get an error if you hadn’t run it yet.

<img width="653" height="145" alt="image" src="https://github.com/user-attachments/assets/0dd09b4d-943e-4bfd-ae8f-8865fc8b8a09" />

<h2>Terraform Init</h2>
terraform init – This will initialize the directory, download the aws provider, and prepare for the code to be run. Let’s go ahead and run it, and you should see output like this:

<img width="556" height="225" alt="image" src="https://github.com/user-attachments/assets/5822757c-0ce5-45da-8bbb-dace3e58bd8b" />

<h2>Terraform Plan</h2>
terraform plan – (Don’t run this yet) This will perform a dry-run and summarize what changes (if any) to the infrastructure defined will be made if this code is applied. This is great to run before you apply in case you notice a mistake. We can’t run this yet since we haven’t configured our lab credentials.

<img width="684" height="389" alt="image" src="https://github.com/user-attachments/assets/2d65e024-c147-468b-b201-1a958e60393c" />

<img width="436" height="386" alt="image" src="https://github.com/user-attachments/assets/62cd3887-4646-473a-b1e2-33d706e0b51a" />

<h2>Terraform Apply</h2>
terraform apply – (Don’t run this yet!) This applies the code once you type the keyword “yes” when prompted. The infrastructure will begin being built or modified in AWS, or in whatever provider you selected.
<img width="545" height="185" alt="image" src="https://github.com/user-attachments/assets/ab561092-a924-4059-8e7d-a291afe028ab" />

list the bucket
    
    aws s3 ls


<img width="392" height="105" alt="image" src="https://github.com/user-attachments/assets/6aca8b57-effa-46fc-b401-1bdca9808162" />


<h2>Destroy the Deployment</h2>
When you’re done with the S3 bucket, you can destroy it by running terraform destroy and typing yes when prompted.

<img width="562" height="183" alt="image" src="https://github.com/user-attachments/assets/f9b0420b-ff5e-403c-b35b-0b9c7f2afe95" />

<img width="428" height="161" alt="image" src="https://github.com/user-attachments/assets/d64c5dbd-1ec0-4062-b0d7-095a87bb40ed" />

Conclusion
That’s it! My first successful Terraform deployment.





