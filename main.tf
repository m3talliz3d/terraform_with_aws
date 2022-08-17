# created key pair to be used to SSH to deployed EC2 instance  
resource "aws_key_pair" "mtc_auth" {
    key_name = "mtckey"
    public_key = file("~/.ssh/mtckey.pub")
}