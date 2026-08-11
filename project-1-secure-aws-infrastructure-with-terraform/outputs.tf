output "vpc_id" {
  description = "ID of the VPC"
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the EC2 security group"
  value = aws_security_group.ec2_sg.id
}

output "s3_bucket_name" {
  description = "Name of the secure S3 bucket"
  value = aws_s3_bucket.secure_bucket.id
}
output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value = aws_instance.web.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value = aws_instance.web.id
}