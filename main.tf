# created key pair to be used to SSH to deployed EC2 instance  
resource "aws_key_pair" "mtc_auth" {
    key_name = "mtckey"
    public_key = file("~/.ssh/mtckey.pub")
}

resource "aws_instance" "dev_node" {
    instance_type = "t2.micro"
    ami = data.aws_ami.server_ami.id
    key_name = aws_key_pair.mtc_auth.id
    vpc_security_group_ids = [aws_security_group.mtc_sg.id]
    subnet_id = aws_subnet.mtc_public_subnet.id
    user_data = file("userdata.tpl")

    root_block_device {
        volume_size = 10
    }

    provisioner "local-exec" {
        command = templatefile("windows-ssh-config.tpl", {
            hostname = self.public_ip
            user = "ubuntu"
            identityfile = "~/.ssh/mtckey"
        })
        interpreter = ["powershell", "-Command"]
    }

    tags = {
        Name = "dev-node"
    }    
}