resource "aws_instance" "example" {
  ami           = var.ami_id            # ✅ no quotes
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name            # ✅ no quotes
  }
}
