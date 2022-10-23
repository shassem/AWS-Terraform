# To print the value after applying to the console / To call the value on terminal --> Ex: $ terraform output vpc_id

output "vpc_id" {
    value = module.network.vpc_id
}