variable "ami_id" {
  description = "ami_id for instance"
  type        = string
  default     = "ami-02d26659fd82cf299"
}
variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t3.micro"
}
variable "instance_name" {
  description = "name of instance"
  default     = "example-instance"
}