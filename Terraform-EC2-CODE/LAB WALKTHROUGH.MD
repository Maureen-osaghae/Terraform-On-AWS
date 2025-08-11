</h1>Create the EC2 instance</h1>

aws configure

terraform init
terraform validate
terraform fmt
terraform apply

Validate the EC2 instance was created by running the following AWS CLI command.

  aws ec2 describe-instances --region us-east-1 --instance-ids i-074bd15ded3d5af70
