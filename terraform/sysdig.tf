terraform {
  required_providers {
    sysdig = {
      source  = "sysdiglabs/sysdig"
    }
  }
}

provider "sysdig" {
  sysdig_secure_url        = "<SYSDIG_URL>"
  sysdig_secure_api_token  = "<SYSDIG_API_TOKEN>"
}

module "sysdig-sfc-agentless" {
  source = "sysdiglabs/secure-for-cloud/aws//modules/services/cloud-bench"
}
