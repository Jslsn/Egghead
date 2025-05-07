variable "name" {
  type        = string
  description = "The name for the api being created"
}

variable "description" {
  type        = string
  description = "The description for the api being created"
}

variable "string_lambda" {
  type        = string
  description = "Uri for the Lambda that handles temporary strings."
}

variable "file_lambda" {
  type        = string
  description = "Uri for the Lambda that handles temporary file uploads."
}


