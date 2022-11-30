# create security group and segurity rules for the ecs cluster
resource "aws_security_group" "ecs-cluster-host" {
  name        = "ecs-cluster-host"
  description = "ecs-cluster-host"
  vpc_id      = aws_vpc.aws-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    description = "Service ssh"
    cidr_blocks = ["0.0.0.0/0"]

  }
 
  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    description     = "Service tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    description     = "Service tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
      from_port       = 0
      to_port         = 65535
      protocol        = "tcp"
      cidr_blocks     = ["0.0.0.0/0"]
    }

   tags = {
    name = "ssh"
  }
  
} 

# output ecs cluster public ip
output "ecs_cluster_runner_ip" {
  description = "External IP of ECS Cluster"
  value       = [aws_instance.ecs-cluster-ec2.*.public_ip]
}