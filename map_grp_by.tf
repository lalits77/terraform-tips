variable "city_list" {
  default = [
    {
      city    = "NewYork"
      country = "USA"
    },
    {
      city    = "LA"
      country = "USA"
    },
    {
      city    = "London"
      country = "UK"
    },
    {
      city    = "Manchester"
      country = "UK"
    },
    {
      city    = "Sydney"
      country = "Australia"
    },
    {
      city    = "Mumbai"
      country = "India"
    }
  ]


}

locals {
  city_by_country = {
    for obj in var.city_list : obj.country => obj.city...
  }
}

output "city_list" {
  value = local.city_by_country
}