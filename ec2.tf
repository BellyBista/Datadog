resource "aws_instance" "base" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t2.micro"
  subnet_id     = "subnet-09087d5a62ed58ade"

  tags = {
    "Name" = "Ansible-Ubuntu"
    "env"  = "prod"
  }
}
