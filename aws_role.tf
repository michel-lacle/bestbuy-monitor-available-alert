resource "aws_iam_instance_profile" "jenkins_instance_profile" {
  name = "jenkins_instance_profile"
  role = aws_iam_role.jenkins-s3-role.name
}

# this role allows EC2 instances to access s3
resource "aws_iam_role" "jenkins-s3-role" {
  name = "jenkins-s3-role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
    {
        "Action": "sts:AssumeRole",
        "Principal": {
        "Service": "ec2.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
    }
    ]
}
EOF
}

resource "aws_iam_policy" "jenkins-put-object-policy" {
  name = "jenkins-put-object-policy"
  description = "allow jenkins to put artifacts onto an s3 bucket"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:PutObject",
            "Resource": "arn:aws:s3:::jenkins-release-artifacts.f1kart.com/*"
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "jenkins-s3-role-attachment" {
  role = aws_iam_role.jenkins-s3-role.name
  policy_arn = aws_iam_policy.jenkins-put-object-policy.arn
}