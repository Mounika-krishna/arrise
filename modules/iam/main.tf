# Group
resource "aws_iam_group" "cli_group" {
  name = "group1"
}

resource "aws_iam_group_policy_attachment" "cli_group_policy" {
  group      = aws_iam_group.cli_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

resource "aws_iam_user" "cli_users" {
  for_each = toset(var.cli_users)
  name     = each.value
}

resource "aws_iam_user_group_membership" "cli_group_membership" {
  for_each = aws_iam_user.cli_users
  user     = each.value.name
  groups   = [aws_iam_group.cli_group.name]
}

# Group2
resource "aws_iam_group" "full_group" {
  name = "group2"
}

resource "aws_iam_group_policy_attachment" "full_group_policy" {
  group      = aws_iam_group.full_group.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user" "full_users" {
  for_each = toset(var.full_users)
  name     = each.value
}

resource "aws_iam_user_group_membership" "full_group_membership" {
  for_each = aws_iam_user.full_users
  user     = each.value.name
  groups   = [aws_iam_group.full_group.name]
}

