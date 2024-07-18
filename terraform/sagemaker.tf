resource "aws_sagemaker_code_repository" "example" {
  code_repository_name = "repo-${var.app_name}-${var.app_environment}"

  git_config {
    repository_url = var.github_repo
  }
}


resource "aws_sagemaker_notebook_instance" "notebook-instance" {
  name                    = "notebook-instance-${var.app_name}-${var.app_environment}"
  role_arn                = var.role_arn
  instance_type           = "ml.t3.2xlarge"
  default_code_repository = aws_sagemaker_code_repository.example.code_repository_name

}