provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "flask_server" {

  ami                    = "ami-0a91cd140a1fc148a"
  instance_type          = "t2.micro"
  key_name               = "devops"
  vpc_security_group_ids = ["sg-08ef1d47a5c4c4305"]

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    timeout     = "1m"
    private_key = "${file("/Users/xunuo/NEU_CoursesData/3_Semester/DevOpsLabs/aws/devops.pem")}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get remove docker docker-engine docker.io",
      "sudo apt install -y docker.io ",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo docker run -p 3002:80 -d nuoxu/mid_term_frontend:latest",
      "sudo docker run -p 3001:3001 -d nuoxu/mid_term_backend:latest"
    ]
  }
  tags = {
    name = "mid-term"
  }
}
