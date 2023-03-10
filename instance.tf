resource "aws_instance" "jtdevops-ubuntu-instance" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = "t2.micro"
  key_name                    = "jenkins-terraform"
  subnet_id                   = sws_subnet.ubnet-06e699f4f5ad9f4d3.id
  associate_public_ip_address = true

  tags = {
    Name = "jtdevops-Ubuntu"
  }
}
