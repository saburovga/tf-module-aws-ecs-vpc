resource "aws_eip" "eip_ecs" {
  vpc      = true
}

resource "aws_nat_gateway" "ngw_ecs" {
  allocation_id = "${aws_eip.eip_ecs.id}"
  subnet_id     = "${aws_subnet.sn_ecs_c.id}"
}