
resource "aws_subnet" "dev_private_1" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.64.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2a"

    tags {
        Name = "dev_private_1"
    }
}
resource "aws_subnet" "dev_private_2" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.96.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2b"

    tags {
        Name = "dev_private_2"
    }
}

resource "aws_subnet" "dev_private_3" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.128.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2c"

    tags {
        Name = "dev_private_2"
    }
}

resource "aws_subnet" "dev_data_1" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.160.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2a"

    tags {
        Name = "dev-data-1"
    }
}
resource "aws_subnet" "dev_data_2" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.192.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2b"

    tags {
        Name = "dev-data-2"
    }
}

resource "aws_subnet" "dev_data_3" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = "10.0.224.0/19"
    map_public_ip_on_launch = "false"
    availability_zone = "eu-west-2c"

    tags {
        Name = "dev-data-3"
    }
}
