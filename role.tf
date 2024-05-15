resource "aws_iam_role" "openvpn_instance_role" {
  name = "openvpn_instance_role"
  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ssm:*",
            ],
            "Resource": "*"
        }
    ]
  })

}

