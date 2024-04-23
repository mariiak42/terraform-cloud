data "tfe_outputs" "vpc" {
  config = {
    organization = "mariiak42"
    workspaces = {
      name = "vpc-prod"
    }
  }
}

output all {
    value = data.tfe_outputs.vpc.outputs
}