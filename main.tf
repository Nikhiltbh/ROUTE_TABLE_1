#Creating Route Table
resource "aws_route_table" "demo-route-table" {
  vpc_id = var.vpc__id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw__id
  }
  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "rt1" {
  subnet_id      = var.subnet1__id
  route_table_id = aws_route_table.demo-route-table.id
}

resource "aws_route_table_association" "rt2" {
  subnet_id      = var.subnet2__id
  route_table_id = aws_route_table.demo-route-table.id
}