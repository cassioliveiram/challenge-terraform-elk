resource "aws_launch_configuration" "moreira-lab" {
  name_prefix       = var.name
  image_id          = data.aws_ami.ubuntu.image_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  user_data         = var.user_data
  enable_monitoring = var.enable_monitoring
  ebs_optimized     = var.ebs_optimized
//  iam_instance_profile = aws_iam_role.ec2-role.name

  dynamic "root_block_device" {
    for_each = var.root_block_device
    content {
      delete_on_termination = root_block_device.value["delete_on_termination"]
      encrypted             = root_block_device.value["encrypted"]
      volume_size           = root_block_device.value["volume_size"]
      volume_type           = root_block_device.value["volume_type"]
      iops                  = root_block_device.value["iops"]
    }
  }

  dynamic "ebs_block_device" {
    for_each = var.ebs_block_device
    content {
      delete_on_termination = ebs_block_device.value["delete_on_termination"]
      encrypted             = ebs_block_device.value["encrypted"]
      device_name           = ebs_block_device.value["device_name"]
      volume_size           = ebs_block_device.value["volume_size"]
      volume_type           = ebs_block_device.value["volume_type"]
      iops                  = ebs_block_device.value["iops"]
    }
  }

  lifecycle {
    create_before_destroy = true
  }

//  depends_on = [aws_iam_instance_profile.moreira-lab]
}


resource "aws_autoscaling_group" "moreira-lab" {
  availability_zones   = ["us-west-2a"]
  name_prefix          = "asg-moreira-lab"
  launch_configuration = aws_launch_configuration.moreira-lab.name
  max_size             = 2
  min_size             = 1

  lifecycle {
    create_before_destroy = true
  }
}

//resource "aws_iam_instance_profile" "moreira-lab" {
//  name = "test_profile"
//  role = aws_iam_role.ec2-role.name
//}
//
//resource "aws_iam_role_policy" "iam-role-ec2" {
//  role = aws_iam_role.ec2-role.id
//  policy = <<EOF
//{
//    "Version": "2012-10-17",
//    "Statement": [
//        {
//            "Action": "sts:AssumeRole",
//            "Principal": {
//               "Service": "ec2.amazonaws.com"
//            },
//            "Effect": "Allow",
//            "Sid": ""
//        }
//    ]
//}
//EOF
//}
//
//resource "aws_iam_role" "ec2-role" {
//  name = "ec2-logs-elasticsearch"
//  path = "/"
//
//  assume_role_policy = <<EOF
//{
//    "Version": "2012-10-17",
//    "Statement": [
//        {
//            "Action": "sts:AssumeRole",
//            "Principal": {
//               "Service": "ec2.amazonaws.com"
//            },
//            "Effect": "Allow",
//            "Sid": "arn:aws:iam::344965637185:*"
//        }
//    ]
//}
//EOF
//}