output "launch-configuration-name" {
  value = aws_launch_configuration.moreira-lab.name
}

output "asg-name" {
  value = aws_autoscaling_group.moreira-lab.name
}

output "my_own_ip" {
  value = data.http.my_own_public_ip.body
}

