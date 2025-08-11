resource "aws_iam_user" "user_to_import" {
    name = "hpotter"
}

resource "aws_iam_user" "user2" {
  force_destroy        = null
  name                 = "hgranger"
  path                 = "/"
  permissions_boundary = null
  tags = {
    cybr-lab = "auto-deployed"
  }
  tags_all = {
    cybr-lab = "auto-deployed"
  }
}
