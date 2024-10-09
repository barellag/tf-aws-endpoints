#File to enter the values for your variables

vpc_id             = "vpc-xxxx"
subnet_id          = "subnet-xxxx"
security_group_id  = "sg-xxxx"
region             = "us-east-1"
creator_initials   = "ABC"  # Replace with the actual initials.
route_table_id     = "rtb-xxxx"  # Replace with your actual Route Table ID.

endpoints = [
  {
    name    = "ec2messages"
    service = "ec2messages"
  },
  {
    name    = "ssm"
    service = "ssm"
  },
  {
    name    = "sqs"
    service = "sqs"
  },
  {
    name    = "ebs"
    service = "ebs"
  },
  {
    name    = "s3"
    service = "s3"
  },
  {
    name    = "kinesis-streams"
    service = "kinesis-streams"
  }
]