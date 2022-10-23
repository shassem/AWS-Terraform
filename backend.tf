#Remote backend connected to S3 bucket
#DynamoDB to activate state locking

terraform {
  backend "s3" {
    bucket = "shereefbucket"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "DynTest"
  }
}

resource "aws_db_instance" "myrds" {
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
resource "aws_db_subnet_group" "rds-sub" {
  name       = "private_subnets"
  subnet_ids = [module.network.privatesub1_id, module.network.privatesub2_id]

}

resource "aws_elasticache_cluster" "myelasticcache" {
  cluster_id           = "rediscluster"
  engine               = "redis"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis5.0"
  engine_version       = "5.0.6"
  port                 = 6379
  apply_immediately = true
  subnet_group_name = aws_elasticache_subnet_group.ecc-sub.name
 
}

resource "aws_elasticache_subnet_group" "ecc-sub" {
  name       = "tf-test-cache"
  subnet_ids = [module.network.privatesub1_id, module.network.privatesub2_id]
}