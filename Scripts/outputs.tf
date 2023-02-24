output "agent private ip dns name" {
value = ${aws_instance.puppet_agent.private-dns}
}