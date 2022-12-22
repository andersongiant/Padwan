resource "aws_db_instance" "banco" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "banco_rds"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.db_subnet.id
}

resource "aws_db_subnet_group" "db_subnet" {
  name       = "dbsubnet"
  subnet_ids = ["subnet-0fd3cbf86dfed627b", "subnet-0e867c5e5ba54b58d"]

  tags = {
    Name = "My DB subnet group"
  }
}