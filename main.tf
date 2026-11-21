data "aws_caller_identity" "current" {}

locals {
  project = "terraform-aws-quicksight-lab"
}

# QuickSight data source for future Athena integration
# PLAN ONLY — no active QuickSight subscription

resource "aws_quicksight_data_source" "athena" {
  aws_account_id = data.aws_caller_identity.current.account_id

  data_source_id = "terraform-athena-source"
  name           = "Terraform Athena Data Source"
  type           = "ATHENA"

  parameters {
    athena {
      work_group = "primary"
    }
  }

  tags = {
    Project     = local.project
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
