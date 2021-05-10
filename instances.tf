resource "aws_autoscaling_group" "this" {
  max_size = 1
  min_size = 1
  desired_capacity = 1

  vpc_zone_identifier = module.vpc[0].private_subnets

  tags = {
    Name = "auto_scaling_group"
  }
}

resource "aws_launch_configuration" "this" {
  image_id = var.centos7_ami
  instance_type = var.instance_type
}
