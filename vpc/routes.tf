resource "aws_route_table" "routes" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "172.31.0.0/16"
    vpc_peering_connection_id  = aws_vpc_peering_connection.peer.id
    carrier_gateway_id         = ""
    destination_prefix_list_id = ""
    egress_only_gateway_id     = ""
    gateway_id                 = ""
    instance_id                = ""
    ipv6_cidr_block            = ""
    local_gateway_id           = ""
    nat_gateway_id             = ""
    network_interface_id       = ""
    transit_gateway_id         = ""
    vpc_endpoint_id            = ""
  }

  tags = {
    Name = "example"
  }
}