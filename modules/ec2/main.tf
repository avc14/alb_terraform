resource "aws_instance" "demoinstance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.sg_id]
  user_data              = file(var.user_data_file)
}
