resource "aws_subnet" "sn_ecs_a" {
    vpc_id     = "${aws_vpc.vpc_ecs.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone="us-east-1a"
    map_public_ip_on_launch="true"
    tags = {
        Name = "sn_ecs_a"
    }
}

resource "aws_subnet" "sn_ecs_b" {
    vpc_id     = "${aws_vpc.vpc_ecs.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone="us-east-1b"
    map_public_ip_on_launch="true"
    tags = {
        Name = "sn_ecs_b"
    }
}

