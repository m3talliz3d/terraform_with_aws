output "instace_public_address" {
    value = "you public Ip to instance ${aws_instance.dev_node.ami} is ${aws_instance.dev_node.public_ip}"
}