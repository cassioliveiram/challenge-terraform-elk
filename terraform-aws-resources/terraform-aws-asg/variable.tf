variable "aws_region" {
  default     = "us-west-2"
  type        = string
  description = "AWS Region to create resources"
}

variable "name" {
  default = "moreira-lab"
  type = string
  description = "The name of resource"
}

variable "image_id" {
  default = ""
  type = string
  description = "The image of your instance"
}

variable "iam_instance_profile" {
  default = null
  type = string
  description = "The iam role for instance"
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Map containing tags to associate to AWS resources."
}

variable "security_groups" {
  default = []
  type = list(string)
  description = "A list of associated security group IDS"
}

variable "ebs_optimized" {
  default = true
  type = bool
  description = "Definition if ebs volume is true or false"
}

variable "instance_type" {
  default = "t3.medium"
  type = string
  description = "Define instance type"
}

variable "key_name" {
  default = "moreira-lab"
  type = string
  description = "The key used to access the instance using ssh"
}

variable "user_data" {
  default = null
  type = string
  description = "An script to run at boot of instance. You can customize values and set default things you want run at launch of instance"
}

variable "enable_monitoring" {
  default = true
  type = bool
  description = "This value enables a lot of monitoring on aws side, you can see this values in cloudwatch"
}

variable "root_block_device" {
  default = [{
    volume_type           = "gp2"
    volume_size           = 30
    encrypted             = true
    iops                  = 0
    delete_on_termination = true
  }]

  type = list(
  object(
  {
    volume_type           = string,
    volume_size           = number,
    encrypted             = bool,
    iops                  = number,
    delete_on_termination = bool
  }
  )
  )
  description = "Customize details about the root block device of the instance."
}

variable "ebs_block_device" {
  default     = []

  type = list(
  object(
  {
    volume_type           = string,
    volume_size           = number,
    encrypted             = bool,
    iops                  = number,
    delete_on_termination = bool,
    device_name           = string
  }
  )
  )
  description = "Additional EBS block devices to attach to the instance."
}