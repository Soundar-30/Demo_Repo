provider "aws" {
  region = var.region
}

locals {
  dollar = "$"
}

resource "aws_instance" "puppet_master" {

  count = var.instance_master_count
  
  ami                   	  = var.master_ami
  instance_type           	  = var.instance_master_type
  user_data              	  = templatefile("masteruserdata.tmpl", {dollar=local.dollar})
  subnet_id              	  = var.master_subnet_id
  key_name                    = var.key_master_name
  vpc_security_group_ids      = var.master_security_group_id
  associate_public_ip_address = var.associate_public_ip_address_master 
  
  tags = {
    Name = "puppet-master"
  }
}

resource "aws_instance" "puppet_agent" {

  count = var.instance_agent_count
  
  ami              			  = var.agent_ami
  instance_type    			  = var.instance_agent_type
  user_data  				  = templatefile("agentuserdata.tmpl", {private_ip = aws_instance.puppet_master[count.index].private_ip})
  subnet_id  				  = var.agent_subnet_id
  key_name               	  = var.key_agent_name
  vpc_security_group_ids      = var.agent_security_group_id
  associate_public_ip_address = var.associate_public_ip_address_agent 
  
  
  tags = {
    Name = "puppet-agent"
  }
  
}

