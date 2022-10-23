resource "aws_db_instance" "myrds" {                # Relational Database System (RDS)
  allocated_storage    = 10
  db_name              = "MySQLDB"
  engine               = "mysql"
  engine_version       = "8.0.27"
  storage_type = "gp2"
  identifier = "mydb"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "passw0rd!123"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.rds-sub.name

  tags = {
    Name = "MySQLDB"
  }
}
resource "aws_db_subnet_group" "rds-sub" {         # RDS subnet group
  name       = "private_subnets"
  subnet_ids = [module.network.privatesub1_id, module.network.privatesub2_id]

}