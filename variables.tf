variable "ip_address" {
  type        = string
  description = "ip-address"

  default = "192.168.0.1"
#   default = "1920.1680.0.1"

  validation {
    condition = can(regex(
      "^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$",
      var.ip_address
    ))

    error_message = "Wrong IPv4"
  }
}

variable "ip_addresses" {
  type        = list(string)
  description = "ip-addresses list"

  default = [
    "192.168.0.1",
    "1.1.1.1",
    "127.0.0.1"
  ]

# default = [
#   "192.168.0.1",
#   "1.1.1.1",
#   "1270.0.0.1"
# ]

  validation {
    condition = alltrue([
      for ip in var.ip_addresses :
      can(regex(
        "^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$",
        ip
      ))
    ])

    error_message = "Wrong IPv4"
  }
}

variable "any_string" {
  type        = string
  description = "любая строка"

  default = "hello terraform"
#   default = "Hello terraform"

  validation {
    condition     = can(regex("^[^A-Z]*$", var.any_string))
    error_message = "Строка не должна содержать символов верхнего регистра."
  }
}

variable "in_the_end_there_can_be_only_one" {
  description = "Who is better Connor or Duncan?"
  
  type = object({
    Dunkan = optional(bool)
    Connor = optional(bool)
  })

  default = {
    Dunkan = true
    Connor = false
  }

#   default = {
#     Dunkan = true
#     Connor = true
#   }

  validation {
    condition = (
      var.in_the_end_there_can_be_only_one.Dunkan !=
      var.in_the_end_there_can_be_only_one.Connor
    )

    error_message = "There can be only one MacLeod"
  }
}