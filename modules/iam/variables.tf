variable "user_name" {
  description = "The name of the IAM user"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the policy to attach"
  type        = string
}