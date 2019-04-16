resource "aws_route_table" "rt_ecs" {
  vpc_id = "${aws_vpc.vpc_ecs.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw_ecs.id}"
    
  }

  tags = {
    Name = "rt_ecs"
  }
}

resource "aws_route_table_association" "sn_ecs_a" {
  subnet_id      = "${aws_subnet.sn_ecs_a.id}"
  route_table_id = "${aws_route_table.rt_ecs.id}"
}

resource "aws_route_table_association" "sn_ecs_b" {
  subnet_id      = "${aws_subnet.sn_ecs_b.id}"
  route_table_id = "${aws_route_table.rt_ecs.id}"
}

