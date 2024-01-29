output "route_table_id" {
  description = "Route Table id"
  value       = aws_route_table.demo-route-table.id
  sensitive   = false
}