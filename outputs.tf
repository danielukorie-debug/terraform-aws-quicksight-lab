
output "quicksight_data_source_id" {
  description = "ID of the planned QuickSight data source."
  value       = aws_quicksight_data_source.athena.data_source_id
}

output "quicksight_data_source_arn" {
  description = "ARN of the planned QuickSight data source."
  value       = aws_quicksight_data_source.athena.arn
}
