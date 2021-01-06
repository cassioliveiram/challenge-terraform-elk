provider "aws" {
  region = var.aws_region
}

resource "aws_elasticsearch_domain" "desafio-pagarme" {
  domain_name           = var.domain_name
  elasticsearch_version = var.elasticsearch_version

  cluster_config {
    instance_type            = var.instance_type
    instance_count           = var.instance_count
    dedicated_master_enabled = var.dedicated_master_enabled
    dedicated_master_type    = var.dedicated_master_type
    zone_awareness_enabled   = var.zone_awareness_enabled
  }

  ebs_options {
    ebs_enabled = var.ebs_enabled
    volume_type = var.volume_type
    volume_size = var.volume_size
  }

  log_publishing_options {
    log_type                 = var.log_publishing_options_log_type
    cloudwatch_log_group_arn = var.log_publishing_options_cw_log_group_arn
    enabled                  = var.log_publishing_options_enabled
  }


  snapshot_options {
    automated_snapshot_start_hour = var.automated_snapshot_start_hour
  }

  tags = {
    Domain = "desafio-pagarme"
  }
}

resource "aws_elasticsearch_domain_policy" "main" {
  depends_on      = [aws_elasticsearch_domain.desafio-pagarme]
  domain_name     = var.domain_name
  access_policies = <<POLICIES
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {"aws:SourceIp": "127.0.0.1/32"}
            },
            "Resource": "${aws_elasticsearch_domain.desafio-pagarme.arn}/*"
        }
    ]
}
POLICIES
}
