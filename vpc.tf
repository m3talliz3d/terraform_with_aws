# Configuring VPC CIDR
resource "aws_vpc" "mtc_vpc"{
    cidr_block = "10.123.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
        Name = "dev"
    }
}

# Configuring Subnet to be used by EC2 instances
resource "aws_subnet" "mtc_public_subnet" {
    vpc_id = aws_vpc.mtc_vpc.id
    cidr_block = "10.123.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-west-2a"

    tags = {
        Name = "dev-public"
    }
}

# Configuring Internet Gateway
resource "aws_internet_gateway" "mtc_internet_gateway" {
    vpc_id = aws_vpc.mtc_vpc.id

    tags = {
        Name = "dev-igw"
    }
}

# Creating a route table
resource "aws_route_table" "mtc_public_rt" {
    vpc_id = aws_vpc.mtc_vpc.id

    tags = {
        Name = "dev-public_rt"
    }
}

# Creating a default route for accessing internet
resource "aws_route" "default_route" {
    route_table_id = aws_route_table.mtc_public_rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mtc_internet_gateway.id
}

# Assocciate created subnet with created route table, reference https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#route-table-assocation
resource "aws_route_table_association" "mtc_public_assoc" {
    subnet_id = aws_subnet.mtc_public_subnet.id
    route_table_id = aws_route_table.mtc_public_rt.id
}