storage_accounts = {
  raw = {
    name                     = "adlsraw"
    resource_group_key       = "stg"
    account_kind             = "StorageV2" #Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2
    account_tier             = "Standard"  #Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid
    account_replication_type = "LRS"       # https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
    min_tls_version          = "TLS1_2"    # Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts.
    allow_blob_public_access = false
    is_hns_enabled           = true
    data_lake_filesystems = {
      raw = {
        name = "raw"
      }
    }
    /*
    private_endpoints = {
      rawdfs = {
        name               = "datalake-raw-dfs"
        vnet_key           = "vnet_region1"
        subnet_key         = "private_endpoints"
        resource_group_key = "stg"
        private_service_connection = {
          name                 = "datalake-raw-dfs"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }
        private_dns = {
          zone_group_name = "privatelink.dfs.core.windows.net"
          lz_key          = "" # If the DNS keys are deployed in a remote landingzone
          keys            = ["privatelink.dfs.core.windows.net"]
        }
      }
    }
    */
  }
  enriched = {
    name                     = "adlsenrichedcurated"
    resource_group_key       = "stg"
    account_kind             = "StorageV2" #Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2
    account_tier             = "Standard"  #Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid
    account_replication_type = "LRS"       # https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
    min_tls_version          = "TLS1_2"    # Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts.
    allow_blob_public_access = false
    is_hns_enabled           = true
    data_lake_filesystems = {
      enriched = {
        name = "enriched"
      }
      curated = {
        name = "curated"
      }
    }
    /*
    private_endpoints = {
      enricheddfs = {
        name               = "datalake-enriched-dfs"
        vnet_key           = "vnet_region1"
        subnet_key         = "private_endpoints"
        resource_group_key = "stg"
        private_service_connection = {
          name                 = "datalake-enriched-dfs"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }
        private_dns = {
          zone_group_name = "privatelink.dfs.core.windows.net"
          lz_key          = "" # If the DNS keys are deployed in a remote landingzone
          keys            = ["privatelink.dfs.core.windows.net"]
        }
      }
    }
    */
  }
  eda = {
    name                     = "adlseda"
    resource_group_key       = "stg"
    account_kind             = "StorageV2" #Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2
    account_tier             = "Standard"  #Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid
    account_replication_type = "LRS"       # https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
    min_tls_version          = "TLS1_2"    # Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts.
    allow_blob_public_access = false
    is_hns_enabled           = true
    data_lake_filesystems = {
      eda = {
        name = "eda"
      }
    }
    /*
    private_endpoints = {
      enricheddfs = {
        name               = "datalake-eda-dfs"
        vnet_key           = "vnet_region1"
        subnet_key         = "private_endpoints"
        resource_group_key = "stg"
        private_service_connection = {
          name                 = "datalake-eda-dfs"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }
        private_dns = {
          zone_group_name = "privatelink.dfs.core.windows.net"
          lz_key          = "" # If the DNS keys are deployed in a remote landingzone
          keys            = ["privatelink.dfs.core.windows.net"]
        }
      }
    }
    */
  }
  extingest = {
    name                     = "externalingestion"
    resource_group_key       = "extstg"
    account_kind             = "StorageV2" #Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2
    account_tier             = "Standard"  #Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid
    account_replication_type = "LRS"       # https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy
    min_tls_version          = "TLS1_2"    # Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts.
    allow_blob_public_access = false
    is_hns_enabled           = false
    containers = {
      incoming01 = {
        name = "incoming01"
      }
    }
    /*
    private_endpoints = {
      externalingestionblob = {
        name               = "externalingestion-blob"
        vnet_key           = "vnet_region1"
        subnet_key         = "private_endpoints"
        resource_group_key = "extstg"
        private_service_connection = {
          name                 = "externalingestion-blob"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "privatelink.blob.core.windows.net"
          lz_key          = "" # If the DNS keys are deployed in a remote landingzone
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    */
  }
}
