
# Internet GW
resource "aws_internet_gateway" "dev_gw" {
    vpc_id = "${aws_vpc.dev.id}"

    tags {
        Name = "dev"
    }
}

# route tables
resource "aws_route_table" "dev_public" {
    vpc_id = "${aws_vpc.dev.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.dev_gw.id}"
    }

    tags {
        Name = "dev-public-1"
    }
}

# route associations public
resource "aws_route_table_association" "dev_public_1_a" {
    subnet_id = "${aws_subnet.dev_public_1.id}"
    route_table_id = "${aws_route_table.dev_public.id}"
}
resource "aws_route_table_association" "dev_public_2_a" {
    subnet_id = "${aws_subnet.dev_public_2.id}"
    route_table_id = "${aws_route_table.dev_public.id}"
}

resource "aws_route_table_association" "dev_public_3_a" {
    subnet_id = "${aws_subnet.dev_public_3.id}"
    route_table_id = "${aws_route_table.dev_public.id}"
}