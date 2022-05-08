global_settings = {
  default_region = "region1"
  regions = {
    region1 = "westus3"
  }
}

landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "test_config1"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      tfstate = "caf_launchpad.tfstate"
      level   = "lower"
    }
  }
}

resource_groups = {
  # Default to var.global_settings.default_region. You can overwrite it by setting the attribute region = "region2"
  evh_examples = {
    name   = "eventhub"
    region = "region1"
  }
}

event_hub_namespaces = {
  evh1 = {
    name               = "evh1"
    resource_group_key = "evh_examples"
    sku                = "Standard"
    region             = "region1"
  }
}
