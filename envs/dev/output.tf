output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
