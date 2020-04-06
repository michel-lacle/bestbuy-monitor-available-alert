resource "aws_security_group" "alerter-ec2-sg" {
  name = "ec2_jenkins_sg"
  description = "Allow ssh & http inbound traffic"
  vpc_id = "vpc-bb9f3bc0"

  ingress {
    description = "TLS from VPC"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Owner = "terraform-bestbuy-monitor-available-alert"
    Project = "bestbuy-monitor-available-alert"
  }
}

resource "aws_instance" "alerter-ec2" {
  ami = "ami-0fc61db8544a617ed"
  instance_type = "t2.nano"

  # this is optional, but needed if you want to ssh into your ec2 instance
  # here I have manually created a key pair in the console and I'm supplying the
  # name.
  key_name = "bestbuy-monitor-available-alert"

 # user_data = file("install_jenkins.sh")

  iam_instance_profile = aws_iam_instance_profile.bestbuy_instance_profile.id

  vpc_security_group_ids = [
    aws_security_group.alerter-ec2-sg.id]

  tags = {
    Name = "bestbuy-monitor-available-alert"
    Owner = "terraform-bestbuy-monitor-available-alert"
    Project = "bestbuy-monitor-available-alert"
  }
}
