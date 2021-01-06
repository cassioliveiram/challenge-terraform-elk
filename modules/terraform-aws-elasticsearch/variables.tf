variable "aws_region" {
  default     = "us-west-2"
  type        = string
  description = "AWS Region to create resources"
}

variable "domain_name" {
  default     = "moreirac-learn"
  type        = string
  description = "Name of the domain."
}

variable "elasticsearch_version" {
  default     = "7.9"
  type        = string
  description = "The version of Elasticsearch to deploy. Defaults to 7.9"
}

variable "instance_type" {
  default     = "t3.medium.elasticsearch"
  type        = string
  description = "Instance type of data nodes in the cluster."
}

variable "instance_count" {
  default     = "2"
  type        = string
  description = "Number of instances in the cluster."
}

variable "dedicated_master_enabled" {
  default     = false
  type        = bool
  description = "Indicates whether dedicated master nodes are enabled for the cluster."
}

variable "dedicated_master_type" {
  default     = null
  type        = string
  description = "Instance type of the dedicated master nodes in the cluster."
}

variable "zone_awareness_enabled" {
  default     = false
  type        = bool
  description = "Indicates whether zone awareness is enabled, set to true for multi-az deployment."
}

variable "automated_snapshot_start_hour" {
  default     = "23"
  type        = string
  description = "Hour during which the service takes an automated daily snapshot of the indices in the domain."
}

variable "ebs_enabled" {
  default     = true
  type        = bool
  description = "Whether EBS volumes are attached to data nodes in the domain."
}

variable "volume_type" {
  default     = "gp2"
  type        = string
  description = "The type of EBS volumes attached to data nodes."
}

variable "volume_size" {
  default     = "50"
  type        = string
  description = "The size of EBS volumes attached to data nodes (in GiB)"
}

variable "log_publishing_options_log_type" {
  default     = "ES_APPLICATION_LOGS"
  type        = string
  description = "A type of Elasticsearch log. Valid values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS"
}

variable "log_publishing_options_cw_log_group_arn" {
  default     = ""
  type        = string
  description = "ARN of the Cloudwatch log group to which log needs to be published."
}

variable "log_publishing_options_enabled" {
  default     = false
  type        = bool
  description = "Specifies whether given log publishing option is enabled or not."
}
