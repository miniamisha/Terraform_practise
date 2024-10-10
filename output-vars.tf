output "ec2_public_ip" {

  value = aws_instance.app_server[*].public_ip
}

output "ec2_private_ip" {
  value = aws_instance.app_server[*].private_ip

}

output "ec2_subnet_id" {
  value = aws_instance.app_server[*].subnet_id

}

