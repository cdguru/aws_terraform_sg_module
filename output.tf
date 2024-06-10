output "name" {
  description = "The name of the Security Group"
  value       = aws_security_group.this.name
}
output "sg_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.this.id
}
output "sg_arn" {
  description = "The ARN of the Security Group"
  value       = aws_security_group.this.arn
}
output "tags" {
  description = "Tags applied to the Security Group"
  value       = var.tags
}
