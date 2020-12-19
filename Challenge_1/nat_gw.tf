# nat gw
resource "aws_eip" "nat" {
  vpc      = true
}
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id = "${aws_subnet.dev_public_1.id}"
  depends_on = ["aws_internet_gateway.dev_gw"]
}

# VPC setup for NAT
resource "aws_route_table" "dev_private" {
    vpc_id = "${aws_vpc.dev.id}"
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.nat_gw.id}"
    }

    tags {
        Name = "dev-private-1"
    }
}
# route associations private
resource "aws_route_table_association" "dev_private_1_a" {
    subnet_id = "${aws_subnet.dev_private_1.id}"
    route_table_id = "${aws_route_table.dev_private.id}"
}
resource "aws_route_table_association" "dev_private_2_a" {
    subnet_id = "${aws_subnet.dev_private_2.id}"
    route_table_id = "${aws_route_table.dev_private.id}"
}

resource "aws_route_table_association" "dev_private_3_a" {
    subnet_id = "${aws_subnet.dev_private_3.id}"
    route_table_id = "${aws_route_table.dev_private.id}"
}
