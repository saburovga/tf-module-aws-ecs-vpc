resource "aws_internet_gateway" "igw_ecs" {
  vpc_id = "${aws_vpc.vpc_ecs.id}"

  tags = {
    Name = "igw_ecs"
  }
}