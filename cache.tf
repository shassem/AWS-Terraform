resource "aws_elasticache_cluster" "myelasticcache" {      # ElastiCache
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

resource "aws_elasticache_subnet_group" "ecc-sub" {         # Assigning an ElastiCache subnet group
  name       = "tf-test-cache"
  subnet_ids = [module.network.privatesub1_id, module.network.privatesub2_id]
}