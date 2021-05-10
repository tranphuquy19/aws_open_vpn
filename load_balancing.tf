resource "aws_elb" "open_vpn" {
  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 3000
    lb_protocol = "http"
  }

  listener {
    instance_port = 1194
    instance_protocol = "tcp"
    lb_port = 1194
    lb_protocol = "tcp"
  }
}
