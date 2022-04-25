networking = {
  name   = "network"
  region = "region1"
}

resource_groups = {
  stg = {
    name   = "datalake-storage"
    region = "region1"
  }

  cicd = {
    name   = "mgmt-cicd-agents"
    region = "region1"
  }

  extstg = {
    name   = "ext-storage-services"
    region = "region1"
  }

  meta = {
    name   = "databricks-hive-metastore"
    region = "region1"
  }

  runtimes = {
    name   = "runtimes"
    region = "region1"
  }

  shareddbricks = {
    name   = "shared-analytics-databricks"
    region = "region1"
  }

  sharedsynapse = {
    name   = "shared-analytics-synapse"
    region = "region1"
  }

  dp01 = {
    name   = "example-product-01"
    region = "region1"
  }

  dp02 = {
    name   = "example-product-02"
    region = "region1"
  }
}
