# Create an IAM group membership resource that adds a user to a group.
resource "aws_iam_group_membership" "cloudnspace_team" {
  name  = "cloudnspace_team" # Name of the IAM group membership resource.

  # List of user names to add to the group.
  users = [
    aws_iam_user.user_one.name, # Reference to the IAM user on line 38.
  ]

  group = aws_iam_group.cloudnspace_group.name # Reference to the IAM group on line 32.
}

# Create an IAM group policy resource that defines a policy for a group.
resource "aws_iam_group_policy" "cloudnspace_policy" {
  name  = "cloudnspace_developer_policy" # Name of the IAM group policy resource.
  group = aws_iam_group.cloudnspace_group.name 

  # JSON-encoded policy document that allows EC2 describe actions for all resources.
  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action   = ["ec2:Describe*"]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

# Create an IAM group resource.
resource "aws_iam_group" "cloudnspace_group" {
  name = "cloudnspace-group" # Name of the IAM group.
  path = "/" # Path to the IAM group.
}

# Create an IAM user resource.
resource "aws_iam_user" "user_one" {
  name = "dev1" # Name of the IAM user.
}
