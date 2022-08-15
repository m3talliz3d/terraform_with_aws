resource "aws_security_group" "mtc_sg" {
    name = "dev_sg"
    description = "dev Security Group"
    vpc_id = aws_vpc.mtc_vpc.id

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}