output "ids" {
  description = "Instance IDs"
  value       = "${module.ec2.id}"
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = ["${local.this_availability_zone}"]
}

output "tags" {
  description = "Tags"
  value       = "${module.ec2.tags}"
}

output "network_interface_id" {
  description = "List of IDs of the network interface of instances"
  value       = ["${local.this_network_interface_id}"]
}

output "public_dns" {
  description = "Public DNS names assigned to the instances"
  value       = "${module.ec2.public_dns}"
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = ["${local.this_public_ip}"]
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = ["${local.this_private_ip}"]
}

output "vpc_security_group_ids" {
  description = "VPC security group ids assigned to the instances"
  value       = "${module.ec2.vpc_security_group_ids}"
}






