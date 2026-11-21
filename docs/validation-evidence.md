# Amazon QuickSight Terraform Validation Evidence

## Environment

- AWS account: 774305591665
- IAM user: 3rd-lab-user
- AWS region: us-east-1
- Terraform version: 1.17.0
- Project: terraform-aws-quicksight-lab

## AWS Discovery

Observed results:

```text
QuickSight subscription:
ResourceNotFoundException — The account does not exist.

QuickSight datasets:
DataSetSummaries: []

QuickSight dashboards:
UnsupportedUserEditionException —
Account is not subscribed for QuickSight.
```

## Terraform Validation

Command:

```bash
terraform validate
```

Observed result:

```text
Success! The configuration is valid.
```

## Terraform Plan

Command:

```bash
terraform plan -refresh=false -input=false -no-color
```

Observed result:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

## Planned Resource

aws_quicksight_data_source.athena

Properties:

- Data source ID: terraform-athena-source
- Data source name: Terraform Athena Data Source
- Type: ATHENA
- Athena workgroup: primary

## Planned Outputs

- quicksight_data_source_id: terraform-athena-source
- quicksight_data_source_arn: known after apply

## Deployment Status

PLAN ONLY — NOT DEPLOYED.

No terraform apply was executed.

No QuickSight subscription was activated.

## Screenshot

screenshots/quicksight-terraform-validation.png
