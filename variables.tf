variable "sg-name" {
  type        = string 
}

variable "sg-description" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "project" {
  type        = string
}

variable "sg-tags" {
  type        = map(string)
  default = {} 
}

variable "vpc-id" {
  type = string
}
