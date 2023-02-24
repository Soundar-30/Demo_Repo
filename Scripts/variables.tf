variable "instance_master_count" {
  description = "Number of instances to launch"
  type        = number
  default     = 1
}

variable "instance_agent_count" {
  description = "Number of agent instances to launch"
  type        = number
  default     = 1
}

variable "master_ami" {
  description = "AMI for master server instance"
  type        = string
  default     = "ami-0a59f0e26c55590e9"
}

variable "agent_ami" {
  description = "AMI for agent server instance"
  type        = string
  default     = "ami-0a59f0e26c55590e9"
}

variable "instance_master_type" {
  description = "The type of instance to start"
  type        = string
  default = "t2.micro"
}

variable "instance_agent_type" {
  description = "The type of instance to start"
  type        = string
  default = "t2.micro"
}

variable "master_subnet_id" {
  description = "Subnet to be used for master server instance"
  type        = string
  default     = "subnet-605dab1d"
}

variable "agent_subnet_id" {
  description = "Subnet to be used for agent server instance"
  type        = string
  default     = "subnet-605dab1d"
}

variable "key_master_name" {
  description = "The key name to use for the instance"
  type        = string
  default     = "instance-key"
}

variable "key_agent_name" {
  description = "The key name to use for the instance"
  type        = string
  default     = "instance-key"
}

variable "master_security_group_id" {
  description = "Subnet to be used for master server instance"
  type        = list(string)
  default     = ["sg-02000de3602ba307e"]
}

variable "agent_security_group_id" {
  description = "Subnet to be used for agent server instance"
  type        = list(string)
  default     = ["sg-02000de3602ba307e"]
}

variable "associate_public_ip_address_master" {
  description = "If true, the EC2 instance will have associated public IP address, acceptable options: [true, false]"
  type        = bool
  default     = true
}

variable "associate_public_ip_address_agent" {
  description = "If true, the EC2 instance will have associated public IP address, acceptable options: [true, false]"
  type        = bool
  default     = true
}

variable "region" {
	type = string
	default = "us-east-2"
}
