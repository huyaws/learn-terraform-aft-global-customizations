{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "states:Start*",
            "Resource": "${account_global_customizations_sfn_arn}"
        }
    ]
}