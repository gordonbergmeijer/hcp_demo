provider "random" {}

resource "random_pet" "name" {
  length = 4
}

output "random_pet_name" {
  value = random_pet.name.id
}

resource "random_integer" "number" {
  min = 100
  max = 999
}

resource "azurerm_resource_group" "main" {
  name     = "terraform-course"
  location = "eastus"

  tags = {
    Name        = "terraform-course"
    Environment = "Lab"
    Managed_By  = "Terraform"
    Owner       = "Bergmeijer"
    boss        = "Gordon"
  }
}

