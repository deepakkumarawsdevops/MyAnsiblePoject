# node creation

resource "aws_instance" "node1ec2" {
  ami                    = "ami-0a7de6eb3a5ad1610"
  key_name               = "K1"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-061b54d0100c1abec"
  vpc_security_group_ids = ["sg-00195a834f79b4427"]
  availability_zone      = "eu-west-2b"
  private_ip             = "172.31.33.6"
  tags = {

    Name = "AnsibleNode1"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "10"
    tags = {
      Name = "Node1vol"

    }

  }

}

# node 2 

resource "aws_instance" "node2ec2" {
  ami                    = "ami-00785f4835c6acf64"
  key_name               = "K1"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-061b54d0100c1abec"
  vpc_security_group_ids = ["sg-00195a834f79b4427"]
  availability_zone      = "eu-west-2b"
  private_ip             = "172.31.33.7"
  tags = {

    Name = "AnsibleNode2"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = "8"
    tags = {
      Name = "Node2vol"

    }

  }
}
