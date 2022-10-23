resource "aws_instance" "my-webserver" {
  #Block Body

  ami           = var.ami_id
  instance_type = var.instance-type
  key_name      = var.key-name
  user_data     = file("setup.nginx.sh")


  
  tags = {
    Name = "Terraform-Challenge-nginx"
  }


}

output "ip_instance" {
  value = aws_instance.my-webserver.public_ip
  description = "La IP Publica de mi EC2 Instance Challenge"
}