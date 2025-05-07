#API
resource "aws_api_gateway_rest_api" "message_api" {

  name = var.name
  description = var.description

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

#API Resources
resource "aws_api_gateway_resource" "string" {
  rest_api_id = aws_api_gateway_rest_api.message_id.id
  parent_id   = aws_api_gateway_rest_api.message_api.root_resource_id
  path_part   = "tempstring"
}

resource "aws_api_gateway_resource" "string_id" {
  rest_api_id = aws_api_gateway_rest_api.message_api.id
  parent_id   = aws_api_gateway_resource.string.id
  path_part   = "{id}"
}

resource "aws_api_gateway_resource" "file" {
  rest_api_id = aws_api_gateway_rest_api.message_api.id
  parent_id   = aws_api_gateway_rest_api.message_api.root_resource_id
  path_part   = "tempfile"
}

resource "aws_api_gateway_resource" "file_id" {
  rest_api_id = aws_api_gateway_rest_api.message_id.id
  parent_id   = aws_api_gateway_resource.file.id
  path_part   = "{id}"
}

resource "aws_api_gateway_resource" "file_upload" {
  rest_api_id = aws_api_gateway_rest_api.message_id.id
  parent_id   = aws_api_gateway_resource.file.id
  path_part   = "tempfile"
}

#API Methods and respective integrations

/*
I THINK you're all good on creating the Lambdas in seperate modules, you just need to use 
your domain so you don't need to think about api urls.
*/

#Strings
resource "aws_api_gateway_method" "string_get" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.string.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "string_get" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.string.id
  http_method          = aws_api_gateway_method.string_get
  type                 = "AWS_PROXY"


  uri   = var.string_lambda
}

resource "aws_api_gateway_method" "string_post" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.string.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "string_post" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.string.id
  http_method          = aws_api_gateway_method.string_post
  type                 = "AWS_PROXY"


  uri   = var.string_lambda
}

#Files
resource "aws_api_gateway_method" "files_get" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.file.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "file_get" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.file.id
  http_method          = aws_api_gateway_method.file_get
  type                 = "AWS_PROXY"


  uri   = var.file_lambda
}

resource "aws_api_gateway_method" "file_upload" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.file.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "file_upload" {
  rest_api_id   = aws_api_gateway_rest_api.message_api.id
  resource_id   = aws_api_gateway_resource.file.id
  http_method          = aws_api_gateway_method.file_upload
  type                 = "AWS_PROXY"


  uri   = var.file_lambda
}

