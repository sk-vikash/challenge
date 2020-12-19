

# Subnets
resource "aws_subnet" "dev_public_1" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.16.0/20"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2a"

    tags {
        Name = "dev-public-1"
    }
}
resource "aws_subnet" "dev_public_2" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.32.0/20"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2b"

    tags {
        Name = "dev-public-2"
    }
}

resource "aws_subnet" "dev_public_3" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.48.0/20"
    map_public_ip_on_launch = "true"
    availability_zone = "eu-west-2c"

    tags {
        Name = "dev-public-3"
    }
}
