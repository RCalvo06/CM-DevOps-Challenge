
variable "ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "ami-08c40ec9ead489470"

  validation {
    condition     = length(var.ami_id) > 4 && substr(var.ami_id, 0, 4) == "ami-"
    error_message = "The ami_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance-type" {

    type = string
    description = "Ingrese el tipo de instancia de AWS"
    default = "t2.micro"
    
  
}

variable "key-name" {

  type = string
  description = "Key name for value"
  default = "clase08"
  
}