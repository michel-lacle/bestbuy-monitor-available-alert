resource "aws_sns_topic" "monitor-availability-topic" {
  name = "monitor-availability"
}


resource "aws_sns_topic_subscription" "sms" {
  endpoint = var.phone-number
  protocol = "sms"
  topic_arn = aws_sns_topic.monitor-availability-topic.arn
}