landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "test_config2_storage"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate = "caf_launchpad.tfstate"
      level   = "lower"
    }
    test_config1 = {
      tfstate = "test_config1.tfstate"
    }
  }
}

storage_accounts = {
  nsgflogs = {
    name = "nsglogs"
    resource_group = {
      key    = "evh_examples"
      lz_key = "test_config1"

    }
    account_kind              = "BlobStorage"
    account_tier              = "Standard"
    shared_access_key_enabled = false
    account_replication_type  = "LRS"
  }
}
