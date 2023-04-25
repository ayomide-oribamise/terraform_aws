# Declare an output that displays the name of the IAM user.
output "user_name" {
  description = "" # Optional description for the output.

  # The value of the output is the IAM user resource, which can be referenced
  # by its attributes such as "name", "arn", and so on.
  value = aws_iam_user.user_one
}

# Declare an output that displays the name of the IAM group.
output "group_name" {
  description = "" # Optional description for the output.

  # The value of the output is the IAM group resource, which can be referenced
  # by its attributes such as "name", "arn", and so on.
  value = aws_iam_group.cloudnspace_group
}
