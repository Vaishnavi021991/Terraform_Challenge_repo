provider "aws" {
  region = "ap-southeast-2"
}

module "iam_user" {

  source = "./modules/iam/iam-user-new"

  username   = var.username
  group_name = "dev_group_new"
  custom_group_policies = [
    {
      name   = "AllowS3Listing"
      policy = data.aws_iam_policy_document.s3_bucket_policy.json
    },
    {
      name   = "ec2_start_stop_policy"
      policy = data.aws_iam_policy_document.ec2_start_stop_policy.json
    },
  ]

}

data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    actions   = ["s3:ListBucket", "s3:GetBucketLocation"]
    resources = ["arn:aws:s3:::test-bucket-vaishu"]

    effect = "Allow"
  }

  statement {
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::test-bucket-vaishu/offers/*"]

    effect = "Allow"
  }

  statement {
    actions = ["s3:PutObject"]
    resources = [
      "arn:aws:s3:::test-bucket-vaishu/electronics/*",
      "arn:aws:s3:::test-bucket-vaishu/home-appliances/*"
    ]

    effect = "Allow"
  }

  statement {
    actions = ["s3:ListAllMyBuckets"]
    resources = [
      "arn:aws:s3:::*"
    ]

    effect = "Allow"
  }
}

data "aws_iam_policy_document" "ec2_start_stop_policy" {
  statement {
    actions   = ["ec2:StartInstances", "ec2:StopInstances"]
    resources = ["*"]

    effect = "Allow"

    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/Type"
      values   = ["back-office"]
    }

    condition {
      test     = "StringEquals"
      variable = "ec2:ResourceTag/Env"
      values   = ["prd"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:username"
      values   = ["user_1"]
    }

    condition {
      test     = "DateGreaterThan"
      variable = "aws:CurrentTime"
      values   = [var.start_date]
    }

    condition {
      test     = "DateLessThan"
      variable = "aws:CurrentTime"
      values   = [var.end_date]
    }
  }

  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}