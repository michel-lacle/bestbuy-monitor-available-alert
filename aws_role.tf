

# this role allows EC2 instances to access s3
resource "aws_iam_role" "bestbuy-alerter-ec2-role" {
  name = "bestbuy-alerter-s3-role"

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

resource "aws_iam_policy" "bestbuy-alerter-sns-policy" {
  name = "bestbuy-alerter-sns-policy"
  description = "allow ec2 to publish to topic"

  policy = <<EOF
{
  "Id": "Policy1586195901727",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1586195896670",
      "Action": [
        "sns:Publish"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:us-east-1:472521221391:BestBuyAlert",
      "Principal": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "bestbuy-alerter-role-policy-attachment" {
  role = aws_iam_role.bestbuy-alerter-ec2-role.name
  policy_arn = aws_iam_policy.bestbuy-alerter-sns-policy.arn
}

resource "aws_iam_instance_profile" "bestbuy_instance_profile" {
  name = "bestbuy-alerter-instance-profile"
  role = aws_iam_role.bestbuy-alerter-ec2-role.name
}