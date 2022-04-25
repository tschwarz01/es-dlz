vnets = {
  vnet_region1 = {
    resource_group_key = "networking"
    vnet = {
      name          = "esdlz-networking"
      address_space = ["10.0.16.0/21"]
    }
    subnets = {
      private_endpoints = {
        name                                           = "private-endpoints"
        cidr                                           = ["10.0.16.0/25"]
        enforce_private_link_endpoint_network_policies = true
      }
      runtimes = {
        name = "runtimes"
        cidr = ["10.0.16.128/26"]
      }
      cicd = {
        name = "cicd-agents"
        cidr = ["10.0.16.192/26"]
      }
      databricks_container = {
        name = "databricks-container"
        cidr = ["10.0.17.0/25"]
      }
      databricks_host = {
        name = "databricks-host"
        cidr = ["10.0.17.128/25"]
      }
      product01 = {
        name = "data-product01"
        cidr = ["10.0.18.0/26"]
      }
      product02 = {
        name = "data-product02"
        cidr = ["10.0.18.64/26"]
      }
    }
    /*
    diagnostic_profiles = {
      operation = {
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */
  }
}
